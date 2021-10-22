package com.register.java;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;



public class booking{
private String dbUrl = "jdbc:mysql://localhost:3306/hotelbh";
private String dbUname = "root";
private String dbPassword = "Saviramzmay21!";
private String dbDriver = "com.mysql.cj.jdbc.Driver";

public void loadDriver(String dbDriver)
{
try {
Class.forName(dbDriver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
}

public Connection getConnection()
{
Connection con = null;
try {
con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
} catch (SQLException e) {
e.printStackTrace();
}
return con;
}
public String insert(BookRoom mb)
{
loadDriver(dbDriver);
Connection con = getConnection();
String result = "Data entered successfully";
String sql = "insert into room values(?,?,?,?,?)";

PreparedStatement ps;
try {
ps = con.prepareStatement(sql);

ps.setString(1, mb.getUname());
ps.setString(2, mb.getRoomnumber());
ps.setString(3, mb.getNoofmemberstostay());
ps.setString(4, mb.getStayfrom());
ps.setString(5, mb.getStayto());
ps.executeUpdate();
} catch (SQLException e) {
e.printStackTrace();
result = "Data not entered";
}
return result;
}
public void update(BookRoom mb)
{
loadDriver(dbDriver);
Connection con = getConnection();

String sql = "UPDATE booking set RoomStatus = ? where RoomNumber = ?";

PreparedStatement ps;
try {
ps = con.prepareStatement(sql);

ps.setString(1, "booked");
ps.setString(2, mb.getRoomnumber());

ps.executeUpdate();
} catch (SQLException e) {
e.printStackTrace();

}

}}



