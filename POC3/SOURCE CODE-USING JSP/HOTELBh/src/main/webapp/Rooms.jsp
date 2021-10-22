<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Room book</title>
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

<%
String UserName=request.getParameter("UserName");
String roomNumber=request.getParameter("RoomNumber");
String noOfPeople=request.getParameter("NoOfPeople");
String checkIn=request.getParameter("CheckInDate");
String checkOut=request.getParameter("CheckOutDate");

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelbh","root","Saviramzmay21!");
Statement st=con.createStatement();
int i=st.executeUpdate("INSERT INTO room values('"+UserName+"','"+roomNumber+"','"+noOfPeople+"','"+checkIn+"','"+checkOut+"')");
out.println("Booked");
%>
To view booking details
<a href="Welcome.jsp">click here</a>
</body>
</html>