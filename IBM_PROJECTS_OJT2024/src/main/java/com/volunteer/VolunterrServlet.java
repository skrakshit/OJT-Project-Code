package com.volunteer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class VolunterrServlet
 */
@WebServlet("/VolunteerServlet")
public class VolunterrServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VolunterrServlet() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("your-name");
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phone-number");
        String email = request.getParameter("your-email");
        int age = Integer.parseInt(request.getParameter("age"));
        String[] skillSet = request.getParameterValues("skill-set[]");
        String skills = String.join(", ", skillSet);
        int experience = Integer.parseInt(request.getParameter("experience"));
        int time = Integer.parseInt(request.getParameter("time"));
        
        try {
            // Database connection
            String url = "jdbc:mysql://localhost:3306/wildlifeconservationdb";
            String username = "root";
            String password = "Nsti123";

            Connection conn = DriverManager.getConnection(url, username, password);

            // SQL Insert Query
            String query = "INSERT INTO volunteer(Name, Address, PhoneNumber, Email, Age, SkillSet, ExperienceYears, WeeklyCommitmentHours) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, name);
            stmt.setString(2, address);
            stmt.setString(3, phoneNumber);
            stmt.setString(4, email);
            stmt.setInt(5, age);
            stmt.setString(6, skills);
            stmt.setInt(7, experience);
            stmt.setInt(8, time);

            int rowsInserted = stmt.executeUpdate();

            if (rowsInserted > 0) {
                // Call method to send SMS
                sendThankYouSMS(phoneNumber);
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Set attributes for the JSP
        request.setAttribute("name", name);
        request.setAttribute("address", address);
        request.setAttribute("phoneNumber", phoneNumber);
        request.setAttribute("email", email);

        // Forward the request to thankyou.jsp
        request.getRequestDispatcher("thankyou.jsp").forward(request, response);
    }

    private void sendThankYouSMS(String phoneNumber) {
        // Implement SMS sending logic here
    }
}
