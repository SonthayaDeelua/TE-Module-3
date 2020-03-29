package com.techelevator.model;

public class Team {
	
	private Integer teamId;
	private String teamName;
	private String division;
	private Integer wins;
	private Integer losses;
	
	public Integer getTeamId() {
		return teamId;
	}
	public void setTeamId(Integer teamId) {
		this.teamId = teamId;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public Integer getWins() {
		return wins;
	}
	public void setWins(Integer wins) {
		this.wins = wins;
	}
	public Integer getLosses() {
		return losses;
	}
	public void setLosses(Integer losses) {
		this.losses = losses;
	}

}
