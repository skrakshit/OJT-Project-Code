import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AdoptionDAO {
    
    public boolean saveAdoption(Adoption adoption) {
        boolean rowInserted = false;
        
        try (Connection connection = DatabaseUtil.getConnection();
             PreparedStatement statement = connection.prepareStatement(
                 "INSERT INTO adoptions (species, fullName, email, message) VALUES (?, ?, ?, ?)")) {
            
            // Notice we don't set the AdoptionID, it's auto-incremented
            statement.setString(1, adoption.getSpecies());
            statement.setString(2, adoption.getFullName());
            statement.setString(3, adoption.getEmail());
            statement.setString(4, adoption.getMessage());

            rowInserted = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return rowInserted;
    }
}
