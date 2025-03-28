package com.praveen;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.*;
import java.sql.*;

@WebServlet("/pastEvents")
public class PastEventsServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            // Establish database connection
            conn = DBConnection.getConnection();

            // Query to get past events
            String query = "SELECT * FROM events WHERE event_date < CURDATE()";
            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);

            // Set the ResultSet as an attribute to be accessed in the JSP
            request.setAttribute("events", rs);

            // Forward to the JSP to display the events
            RequestDispatcher dispatcher = request.getRequestDispatcher("pastEvent.jsp");
            dispatcher.forward(request, response);

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

