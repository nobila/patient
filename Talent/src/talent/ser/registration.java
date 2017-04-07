package talent.ser;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import talent.dbinfo.CrudOperation;

import java.sql.*;
/**
 * Servlet implementation class registration
 */
@WebServlet("/registration")
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con=null;
	//ResultSet rs=null;
	PreparedStatement psuser=null,ps=null;
	ResultSet rs=null;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String un=request.getParameter("txtusername");
		String ul=request.getParameter("txtuserl");
		String ua=request.getParameter("txtuserage");
		String ud=request.getParameter("txtuserdob");
		String ue=request.getParameter("txtuseremail");
		String uph=request.getParameter("txtuserph");
		
		
		String gender=request.getParameter("rdos");
		
		
		con=CrudOperation.createConnection();
	
		String struser="insert into patientinfo(firstname,lastname,age,dob,email,phone,gender) values(?,?,?,?,?,?,?)";
		try{
			
			
			psuser=con.prepareStatement(struser); //INSERTING INTO THE REGISTRATION INFO TABLE.
			psuser.setString(1, un);
			psuser.setString(2, ul);
			psuser.setLong(3, Long.parseLong(ua));
			psuser.setString(4, ud);
			psuser.setString(5, ue);
			psuser.setLong(6, Long.parseLong(uph));
			
			psuser.setString(7,gender);
			
			int row1=psuser.executeUpdate();
			if(row1>0)
			{
				con.commit();
				System.out.println("row-Inserted");
				//response.sendRedirect("/talent/jsp/login.jsp");
			}
			
		}
		catch(SQLException se)
		{
			System.out.println(se);
			
		}
		finally{
			try{
				
				if(psuser!=null)
					psuser.close();
			}
			catch(SQLException se)
			{
				System.out.println(se);
			}
		}
		
		
		
				
		
	}

}
