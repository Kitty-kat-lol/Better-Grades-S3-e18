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
		
		
		//Registering the driver
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
