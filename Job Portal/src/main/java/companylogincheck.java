import java.io.IOException;
import java.sql.*;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;  

public class companylogincheck extends HttpServlet 
{
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	private static final long serialVersionUID = 1L;
	public void init(ServletConfig config) throws ServletException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jobportal","jobportal");
		} catch (ClassNotFoundException e) {
			System.out.println(e);
		} catch (SQLException e) {
			System.out.println(e);
		}
	}
    /**
     * Default constructor. 
     */
    public companylogincheck() {
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
	protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws ServletException, IOException {
		
		String compemail = request.getParameter("compemail");
		String comppass = request.getParameter("comppass");
		
		try {
			ps = conn.prepareStatement("select * from company where COMPANY_EMAIL=? and PASSWORD=?");
			ps.setString(1, compemail);
			ps.setString(2, comppass);
			rs = ps.executeQuery();
		
		if(rs.next())
		{
			response.sendRedirect("company.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}