package net.javaguides.usermanagement.web;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import net.javaguides.usermanagement.dao.UserDAO;
import net.javaguides.usermanagement.model.User;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private UserDAO userDAO;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        this.userDAO = new UserDAO();
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doGet(request, response);
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();

        switch (action) {
            case "/new":
                showNewForm(request, response);
                break;
            case "/insert":
                try {
                    insertSpecies(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "/delete":
                try {
                    deleteSpecies(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "/edit":
                try {
                    showEditForm(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "/update":
                try {
                    updateSpecies(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            default:
                try {
                    listSpecies(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
        }
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
        dispatcher.forward(request, response);
    }

    private void insertSpecies(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {

        String commonName = request.getParameter("commonName");
        String scientificName = request.getParameter("scientificName");
        String conservationStatus = request.getParameter("conservationStatus");
        String habitat = request.getParameter("habitat");
        int populationCount = Integer.parseInt(request.getParameter("populationCount"));
        String regionFound = request.getParameter("regionFound");
        String threats = request.getParameter("threats");
        String description = request.getParameter("description");
        String image = request.getParameter("image");

        String dateAddedStr = request.getParameter("dateAdded");
        Timestamp dateAdded = null;

        if (dateAddedStr != null && !dateAddedStr.isEmpty()) {
            try {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
                Date parsedDate = sdf.parse(dateAddedStr);
                dateAdded = new Timestamp(parsedDate.getTime());
            } catch (Exception e) {
                e.printStackTrace(); // Handle exceptions appropriately
            }
        }

   

        
     // Set timestamp to the user object
 
        // Parse and convert the date string to Timestamp
//        if (dateAddedStr != null && !dateAddedStr.isEmpty()) {
//            try {
//                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//                Date parsedDate = sdf.parse(dateAddedStr);
//                dateAdded = new Timestamp(parsedDate.getTime());
//            } catch (Exception e) {
//                e.printStackTrace();  // Handle exceptions appropriately
//            }
//        }
     

        User newSpecies = new User(commonName, scientificName, conservationStatus, habitat,
                populationCount, regionFound, threats, description, image, dateAdded);
        userDAO.insertSpecies(newSpecies);
        response.sendRedirect("list");
    }
  

    private void deleteSpecies(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int speciesID = Integer.parseInt(request.getParameter("speciesID"));
        userDAO.deleteSpecies(speciesID);
        response.sendRedirect("list");
    }


    
    
    
    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int speciesID = Integer.parseInt(request.getParameter("speciesID"));
       User existingSpecies = userDAO.selectSpecies(speciesID);  // Assuming you rename UserDAO to SpeciesDAO
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
        request.setAttribute("species", existingSpecies);
        dispatcher.forward(request, response);
    }



    
    private void updateSpecies(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int speciesID = Integer.parseInt(request.getParameter("speciesID"));
        String commonName = request.getParameter("commonName");
        String scientificName = request.getParameter("scientificName");
        String conservationStatus = request.getParameter("conservationStatus");
        String habitat = request.getParameter("habitat");
        int populationCount = Integer.parseInt(request.getParameter("populationCount"));
        String regionFound = request.getParameter("regionFound");
        String threats = request.getParameter("threats");
        String description = request.getParameter("description");
        String image = request.getParameter("image");

        String dateAddedStr = request.getParameter("dateAdded");
        Timestamp dateAdded = null;
        if (dateAddedStr != null && !dateAddedStr.isEmpty()) {
            try {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                Date parsedDate = sdf.parse(dateAddedStr);
                dateAdded = new Timestamp(parsedDate.getTime());
            } catch (Exception e) {
                e.printStackTrace();  // Handle exceptions appropriately
            }
        }
     

        User species = new User(speciesID, commonName, scientificName, conservationStatus, habitat,
                populationCount, regionFound, threats, description, image, dateAdded);
        userDAO.updateSpecies(species);
        response.sendRedirect("list");
    }
 
    
    

    private void listSpecies(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<User> listSpecies = userDAO.selectAllSpecies();
        request.setAttribute("listSpecies", listSpecies);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
        dispatcher.forward(request, response);
    }
}
