package net.javaguides.usermanagement.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import net.javaguides.usermanagement.model.User; // Use the correct model class for Species

//for CRUD operations
public class UserDAO {

    private String jdbcURL = "jdbc:mysql://localhost:3306/wildlifeconservationdb?allowPublicKeyRetrieval=true&useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "Nsti123";

    private static final String INSERT_SPECIES_SQL = "INSERT INTO species_data" +
            "  (CommonName, ScientificName, ConservationStatus, Habitat, PopulationCount, RegionFound, Threats, Description, Image, DateAdded) VALUES " +
            "(?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

    private static final String SELECT_SPECIES_BY_ID = "SELECT SpeciesID, CommonName, ScientificName, ConservationStatus, Habitat, PopulationCount, RegionFound, Threats, Description, Image, DateAdded FROM species_data WHERE SpeciesID =?";
    private static final String SELECT_ALL_SPECIES = "SELECT * FROM species_data";
    private static final String DELETE_SPECIES_SQL = "DELETE FROM species_data WHERE SpeciesID = ?;";
    private static final String UPDATE_SPECIES_SQL = "UPDATE species_data SET CommonName = ?, ScientificName = ?, ConservationStatus = ?, Habitat = ?, PopulationCount = ?, RegionFound = ?, Threats = ?, Description = ?, Image = ?, DateAdded = ? WHERE SpeciesID = ?;";

    public Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    // Create or Insert Species
    public void insertSpecies(User species) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SPECIES_SQL)) {
            preparedStatement.setString(1, species.getCommonName());
            preparedStatement.setString(2, species.getScientificName());
            preparedStatement.setString(3, species.getConservationStatus());
            preparedStatement.setString(4, species.getHabitat());
            preparedStatement.setInt(5, species.getPopulationCount());
            preparedStatement.setString(6, species.getRegionFound());
            preparedStatement.setString(7, species.getThreats());
            preparedStatement.setString(8, species.getDescription());
            preparedStatement.setString(9, species.getImage());
            preparedStatement.setTimestamp(10, species.getDateAdded());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Update Species
    public boolean updateSpecies(User species) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(UPDATE_SPECIES_SQL)) {
            statement.setString(1, species.getCommonName());
            statement.setString(2, species.getScientificName());
            statement.setString(3, species.getConservationStatus());
            statement.setString(4, species.getHabitat());
            statement.setInt(5, species.getPopulationCount());
            statement.setString(6, species.getRegionFound());
            statement.setString(7, species.getThreats());
            statement.setString(8, species.getDescription());
            statement.setString(9, species.getImage());
            statement.setTimestamp(10, species.getDateAdded());
            statement.setInt(11, species.getSpeciesID());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    // Select Species by ID
    public User selectSpecies(int id) {
        User species = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_SPECIES_BY_ID)) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                String commonName = rs.getString("CommonName");
                String scientificName = rs.getString("ScientificName");
                String conservationStatus = rs.getString("ConservationStatus");
                String habitat = rs.getString("Habitat");
                int populationCount = rs.getInt("PopulationCount");
                String regionFound = rs.getString("RegionFound");
                String threats = rs.getString("Threats");
                String description = rs.getString("Description");
                String image = rs.getString("Image");
                Timestamp dateAdded = rs.getTimestamp("DateAdded");

                species = new User(id, commonName, scientificName, conservationStatus, habitat, populationCount, regionFound, threats, description, image, dateAdded);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return species;
    }

    // Select All Species
    public List<User> selectAllSpecies() {
        List<User> speciesList = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_SPECIES)) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("SpeciesID");
                String commonName = rs.getString("CommonName");
                String scientificName = rs.getString("ScientificName");
                String conservationStatus = rs.getString("ConservationStatus");
                String habitat = rs.getString("Habitat");
                int populationCount = rs.getInt("PopulationCount");
                String regionFound = rs.getString("RegionFound");
                String threats = rs.getString("Threats");
                String description = rs.getString("Description");
                String image = rs.getString("Image");
                Timestamp dateAdded = rs.getTimestamp("DateAdded");

                speciesList.add(new User(id, commonName, scientificName, conservationStatus, habitat, populationCount, regionFound, threats, description, image, dateAdded));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return speciesList;
    }

    // Delete Species
    public boolean deleteSpecies(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_SPECIES_SQL)) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
}
