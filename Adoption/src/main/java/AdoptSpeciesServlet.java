

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;

/**
 * Servlet implementation class AdoptSpeciesServlet
 */
@WebServlet("/AdoptSpeciesServlet")
public class AdoptSpeciesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdoptSpeciesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String species = request.getParameter("species");
	        String fullName = request.getParameter("fullName");
	        String email = request.getParameter("email");
	        String message = request.getParameter("message");

	        // Create an Adoption object and save it to the database
	        Adoption adoption = new Adoption(species, fullName, email, message);
	        AdoptionDAO adoptionDAO = new AdoptionDAO();
	        
	        boolean isAdopted = adoptionDAO.saveAdoption(adoption);
	        
	        if(isAdopted) {
	        	 request.setAttribute("fullName", fullName);
	        	 response.sendRedirect("adopt_success.jsp?fullName=" + URLEncoder.encode(fullName, "UTF-8"));
	        } else {
	            response.sendRedirect("adopt_failure.jsp");
	        }
	}

}
