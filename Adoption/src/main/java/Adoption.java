public class Adoption {
    private int AdoptionID; // Changed to int
    private String species;
    private String fullName;
    private String email;
    private String message;

    // Constructor without adoptionID (assuming auto-incremented by the database)
    public Adoption(String species, String fullName, String email, String message) {
        this.species = species;
        this.fullName = fullName;
        this.email = email;
        this.message = message;
    }

    // Getter and Setter methods
    public int getAdoptionID() {
        return AdoptionID;
    }

    public void setAdoptionID(int adoptionID) {
        this.AdoptionID = adoptionID;
    }

    public String getSpecies() {
        return species;
    }

    public String getFullName() {
        return fullName;
    }

    public String getEmail() {
        return email;
    }

    public String getMessage() {
        return message;
    }
}
