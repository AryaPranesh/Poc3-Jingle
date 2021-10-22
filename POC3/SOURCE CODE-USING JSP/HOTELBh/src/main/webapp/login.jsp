<%@ page import="java.sql.* " %>
<html>
<head>
<title>Login Form</title>
<style>
body {
  background-image:
    url('https://communicationsguide.ucdavis.edu/sites/g/files/dgvnsk6246/files/styles/sf_gallery_full/public/gallery-2020-03/20190326-ARC-0226.jpg?itok=jnOKO5SF');
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body>
<table>
<%
String Uname=request.getParameter("UserName");
session.putValue("UserName",Uname);
String pwd=request.getParameter("PassWord");
String type=request.getParameter("UserType");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelbh","root","Saviramzmay21!");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("SELECT * FROM registration WHERE UserName='"+Uname+"'");
if(rs.next())
{
  if(rs.getString(4).equals(pwd))
  {
	  out.println("Hello  "+Uname+"<br>"+"Your login time "+ java.util.Calendar.getInstance().getTime());
	  
  }
  else 
	  out.println("Invalid user");
	  
	  }
  
  
%>

</table>
<div>
<a href="Home.jsp">Home</a>
</div>
</body>

</html>
        
