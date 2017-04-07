package talent.dbinfo;
import java.sql.*;
public class CrudOperation
{
	private static Connection cn=null;
	
	static PreparedStatement ps=null;
	static ResultSet rs=null;
	
	public static Connection createConnection()
	{
		
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/patient","root","");
		}
		
		catch(ClassNotFoundException|SQLException cse)
		
		{
			System.out.println(cse);
			
			
		}
		return cn;
	}
	public static ResultSet getData(String sql, String info)
	{
		cn=createConnection();
		try{
			ps=cn.prepareStatement(sql);
			ps.setString(1, info);
		rs=	ps.executeQuery();
		
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}
		return rs;
	}
	public static ResultSet getData(String sql)
	{
		cn=createConnection();
		try{
			ps=cn.prepareStatement(sql);
			//ps.setString(1, info);
		rs=	ps.executeQuery();
		
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}
		return rs;
	}

}
