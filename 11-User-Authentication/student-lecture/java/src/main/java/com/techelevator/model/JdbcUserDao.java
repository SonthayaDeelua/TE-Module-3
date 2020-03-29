package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.techelevator.authentication.PasswordHasher;
import com.techelevator.authentication.SaltedPair;

import org.bouncycastle.util.encoders.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcUserDao implements UserDao {

    private JdbcTemplate jdbcTemplate;
    private PasswordHasher passwordHasher;

    /**
     * Create a new user dao with the supplied data source and the password hasher
     * that will salt and hash all the passwords for users.
     *
     * @param dataSource an SQL data source
     * @param passwordHasher an object to salt and hash passwords
     */
    @Autowired
    public JdbcUserDao(DataSource dataSource, PasswordHasher passwordHasher) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
        this.passwordHasher = passwordHasher;
    }

    /**
     * Save a new user to the database. The password that is passed in will be
     * salted and hashed before being saved. The original password is never
     * stored in the system. We will never have any idea what it is!
     *
     * @param userName the user name to give the new user
     * @param password the user's password
     * @param role the user's role
     * @return the new user
     */
    //the factory to create has and split to be 2 pcs, the actual has and the has password which shipped to database
    public SaltedPair hashData(String input) {
        byte[] salt = passwordHasher.generateRandomSalt();
        String hashedPassword = passwordHasher.computeHash(input, salt);
        String saltString = new String(Base64.encode(salt));
        return  new SaltedPair(hashedPassword, saltString);
    }
    // process to save password to be in hashed pwd and sale;
    @Override 
    public User saveUser(String userName, String password, String role) {
    	
    	System.out.println("pwd typed in : " + password);
    	SaltedPair saltedPair = this.hashData(password);
    	System.out.println("pwd after hash : " + saltedPair.getHashedPassword());
    	// add SQL to save user.
    	
    	String sql = "INSERT INTO users(username, password,salt, role) VALUES(?,?,?,?) RETURNING id";
    	//user queryforobject incase just only one line
    	long newId = jdbcTemplate.queryForObject(sql, Long.class, userName, saltedPair.getHashedPassword(), saltedPair.getHash(),role);
    	// Long.class called reflection.
    	
    	User newUser = new User();
    	newUser.setId(newId);
    	newUser.setUsername(userName);
    	newUser.setRole(role);
    	
        return newUser;
    }

    @Override
    public void changePassword(User user, String newPassword) {
   	
    	SaltedPair saltedPair = hashData(newPassword);
        jdbcTemplate.update("UPDATE users SET password=?, salt=? WHERE id=?", saltedPair.getHashedPassword(), saltedPair.getHash(), user.getId());
    }

    /**
     * Look for a user with the given username and password. Since we don't
     * know the password, we will have to get the user's salt from the database,
     * hash the password, and compare that against the hash in the database.
     *
     * @param userName the user name of the user we are checking
     * @param password the password of the user we are checking
     * @return true if the user is found and their password matches
     */
    @Override
    public User getValidUserWithPassword(String userName, String password) {
        String sqlSearchForUser = "SELECT * FROM users WHERE UPPER(username) = ?";
        
        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSearchForUser, userName.toUpperCase());

        // write code to match the passwords.
        
        while(results.next()) {
        	
        	String storedSalt = results.getString("salt");
        	String storedPassword = results.getString("password");
        	String hashedPassword = passwordHasher.computeHash(password, Base64.decode(storedSalt));
        	
        	if(storedPassword.equals(hashedPassword)) {
        		return mapResultToUser(results);
        	}
        }
        
        return null;
    }

    /**
     * Get all of the users from the database.
     * @return a List of user objects
     */
    @Override
    public List<User> getAllUsers() {
        List<User> users = new ArrayList<User>();
        String sqlSelectAllUsers = "SELECT id, username, role FROM users";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllUsers);

        while (results.next()) {
            User user = mapResultToUser(results);
            users.add(user);
        }

        return users;
    }

    private User mapResultToUser(SqlRowSet results) {
        User user = new User();
        user.setId(results.getLong("id"));
        user.setUsername(results.getString("username"));
        user.setRole(results.getString("role"));
        return user;
    }

}
