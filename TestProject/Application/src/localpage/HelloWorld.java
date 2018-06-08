package localpage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MyBatisPackage.*;
import MyBatisPackage.dao.CoursDAO;
//import MyBatisPackage.dao.*;
import MyBatisPackage.mapper.*;
import MyBatisPackage.model.*;
import MyBatisPackage.resources.*;
import MyBatisPackage.util.*;
import org.apache.ibatis.io.Resources;

/**
 * Servlet implementation class HelloWorld
 */
@WebServlet("/HelloWorld")
public class HelloWorld extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloWorld() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getLocalName());
		
		
		
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		PrintWriter out = response.getWriter();
		
		out.println("Table Cours");
		CoursDAO coursdao = new CoursDAO();
		out.println(coursdao.getCoursById("GEN100").toString());
		
		
		
		System.out.println("Tentative de connection � la base de donn�es...");
		Connection connec = null;
		Statement stmt = null;
		String query = "SELECT * FROM COURS";
		Cours test;
		
		/*try {
			
			connec = DriverManager.getConnection(DB_URL,USERNAME,PASSWORD);
			
			//�crit le sch�ma s�lectionn�
			connec.setSchema("grades");
			System.out.println(connec.getSchema());
			
			test = new Cours();
			stmt = connec.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			while(rs.next()) {
			     test.setId(rs.getString("cours_id"));
			     test.setNom(rs.getString("nom"));
			    out.println("Cours ID: "+test.getId()+" Nom: "+test.getNom());
				
			}
			
			}
			catch(SQLException e) {
				//�crit le message d'erreur de la connection �chou�e
				System.out.println(e.getMessage());
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}*/	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		response.getWriter().append("Do Post");
		
		request.getRequestDispatcher("WebContent/WEN-INF/test.jsp");
		
		CoursDAO coursdao = new CoursDAO();
		coursdao.getCoursById("GEN100");
	}

}
