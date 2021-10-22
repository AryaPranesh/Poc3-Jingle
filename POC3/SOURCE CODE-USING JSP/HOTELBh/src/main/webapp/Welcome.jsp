<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*"%>

<html>
<head>
<title>Welcome</title>
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
        <tr><td>
        <% String username = request.getParameter("UserName"); %>
        <a>Welcome , you have logged in.</a></td></tr>
        </table>
    
    


<h1>Room Availabilty </h1>
       <%
          Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelbh","root","Saviramzmay21!");
          Statement statement = connection.createStatement() ;
          ResultSet resultset = statement.executeQuery("select * from booking") ;
       %>
      <table BORDER="1">
      <tr>
      <th>Room Number</th>
      <th>Room Type</th>
      <th>Availability Status</th>
      </tr>
      <% while(resultset.next()){ %>
      <tr>
       <td> <%= resultset.getString(1) %></td>
       <td> <%= resultset.getString(2) %></td>
       <td> <%= resultset.getString(3) %></td>
      </tr>
      <% } %>
     </table>
    
<table>
<tr><a href="Home.jsp"><b>Logout</b></a></tr>
</table>
</body>
</html>