/**
 * 
 */
package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class TeamJdbcDAO implements TeamDAO {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public TeamJdbcDAO(DataSource datasource) {
		this.jdbcTemplate = new JdbcTemplate(datasource);
	}

	@Override
	public List<Team> retrieveTeams() {
		List<Team> output = new ArrayList<>();
		
		String sql = "select team_id, team_name, division_name, wins, losses, division_name from team JOIN division ON (team.division_id = division.division_id)";
		SqlRowSet sqlRowSet = jdbcTemplate.queryForRowSet(sql);
		
		while (sqlRowSet.next()) {
			
			Team team = new Team();
			team.setTeamId(sqlRowSet.getInt("team_id"));
			team.setTeamName(sqlRowSet.getString("team_name"));
			team.setWins(sqlRowSet.getInt("wins"));
			team.setLosses(sqlRowSet.getInt("losses"));
			team.setDivision(sqlRowSet.getString("division_name"));
			
			output.add(team);
		}
		
		return output;
	}

	@Override
	public void updateData(Team team) {
		int divId = fetchDivisionId(team.getDivision());
		
		String sql = "INSERT INTO team (team_name, division_id, wins, losses) VALUES (?,?,?,?)";
		jdbcTemplate.update(sql, team.getTeamName(), divId, team.getWins(), team.getLosses());

	}
	
	private int fetchDivisionId(String divName) {
		
		String sql = "SELECT division_id from division where division_name = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sql, divName);
		int output = 0;
		
		while (results.next()) {
			output = results.getInt("division_id");
		}
		
		return output;
		
	}

}
