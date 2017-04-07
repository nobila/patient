<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="talent.dbinfo.CrudOperation"%>
<%@page import="java.sql.*"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>roomdetail</title>
</head>
<body>
<%


String s_id=request.getParameter("serialno");
System.out.println(s_id);
response.setContentType("text/html");
/* PrintWriter out=response.getWriter(); */
HttpSession hs=null;
ResultSet rs=null;
Connection con=null;
PreparedStatement ps=null; 

con=CrudOperation.createConnection();
String name=(String)request.getParameter("Name");

String strsql="select * from patientinfo where firstname=?";
 try
	{
	// rs = statement.executeQuery("SELECT * FROM students WHERE  your condition");
 rs=CrudOperation.getData(strsql,name);
	/* 	ps=con.prepareStatement(strsql);//compile */
		/* ps.setString(1,city_id); */
		/* rs=ps.executeQuery(); */

		%>

		<table class="table table-hover">
		<tr><th>FirstName</th><th>Last-Name</th> <th>Age</th><th>DOB</th><th>Email</th><th>Phone</th><th>Gender</th></tr>
		<%
		while(rs.next())
		{
			%>
			<tr><th><%=rs.getString("firstname") %><th><%=rs.getString("lastname") %></th><th><%=rs.getString("age") %></th>
			<th><%=rs.getString("dob") %></th><th><%=rs.getString("email") %></th>
			<th><%=rs.getString("phone") %></th><th><%=rs.getString("gender") %></th></tr>
			
			
			<%} %>
			

</table>

<%

}
catch(SQLException se)
 {

	out.println(se);
	
}
 
 finally{
	 
	 
	 
	 
 }





%>



</body>
</html>