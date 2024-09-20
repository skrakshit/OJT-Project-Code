package net.javaguides.usermanagement.model;


import java.sql.*;

public class User {
	
	private int SpeciesID;
	
	private String CommonName;
	
	private String ScientificName;
	
	private String ConservationStatus; 
	
	private String Habitat;
	
	private int PopulationCount;
	
	private String RegionFound;
	
	private String Threats;
	
	private String Description;
	
	private String Image;
	
	 private Timestamp DateAdded;
	 
	 
	 
	 
	 
	 
	 

	public User(int speciesID, String commonName, String scientificName, String conservationStatus, String habitat,
			int populationCount, String regionFound, String threats, String description, String image,
			Timestamp dateAdded) {
		super();
		SpeciesID = speciesID;
		CommonName = commonName;
		ScientificName = scientificName;
		ConservationStatus = conservationStatus;
		Habitat = habitat;
		PopulationCount = populationCount;
		RegionFound = regionFound;
		Threats = threats;
		Description = description;
		Image = image;
		DateAdded = dateAdded;
	}
	
	
	
	

	public User(String commonName, String scientificName, String conservationStatus, String habitat,
			int populationCount, String regionFound, String threats, String description, String image,
			Timestamp dateAdded) {
		super();
		CommonName = commonName;
		ScientificName = scientificName;
		ConservationStatus = conservationStatus;
		Habitat = habitat;
		PopulationCount = populationCount;
		RegionFound = regionFound;
		Threats = threats;
		Description = description;
		Image = image;
		DateAdded = dateAdded;
	}





	public int getSpeciesID() {
		return SpeciesID;
	}

	public void setSpeciesID(int speciesID) {
		SpeciesID = speciesID;
	}

	public String getCommonName() {
		return CommonName;
	}

	public void setCommonName(String commonName) {
		CommonName = commonName;
	}

	public String getScientificName() {
		return ScientificName;
	}

	public void setScientificName(String scientificName) {
		ScientificName = scientificName;
	}

	public String getConservationStatus() {
		return ConservationStatus;
	}

	public void setConservationStatus(String conservationStatus) {
		ConservationStatus = conservationStatus;
	}

	public String getHabitat() {
		return Habitat;
	}

	public void setHabitat(String habitat) {
		Habitat = habitat;
	}

	public int getPopulationCount() {
		return PopulationCount;
	}

	public void setPopulationCount(int populationCount) {
		PopulationCount = populationCount;
	}

	public String getRegionFound() {
		return RegionFound;
	}

	public void setRegionFound(String regionFound) {
		RegionFound = regionFound;
	}

	public String getThreats() {
		return Threats;
	}

	public void setThreats(String threats) {
		Threats = threats;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public String getImage() {
		return Image;
	}

	public void setImage(String image) {
		Image = image;
	}

	public Timestamp getDateAdded() {
		return DateAdded;
	}

	public void setDateAdded(Timestamp dateAdded) {
		DateAdded = dateAdded;
	}  
	
	
	
		  

}
