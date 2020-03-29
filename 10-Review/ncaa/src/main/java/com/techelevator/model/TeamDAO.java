package com.techelevator.model;

import java.util.List;

public interface TeamDAO {
	public List<Team> retrieveTeams();
	public void updateData(Team team);
}
