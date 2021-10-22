package com.register.java;

import java.io.IOException;
import java.sql.Date;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/Bookingregister")
public class Bookingregister extends HttpServlet {
private static final long serialVersionUID = 1L;


public Bookingregister() {
super();
// TODO Auto-generated constructor stub
}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String userName= request.getParameter("UserName");
String roomNumber= request.getParameter("RoomNumber");
String noOfP = request.getParameter("NoOfPeople");
String checkinDate = request.getParameter("CheckInDate");
String checkOutDate= request.getParameter("CheckOutDate");

BookRoom mB = new BookRoom(userName,roomNumber,noOfP,checkinDate,checkOutDate);
booking book = new booking();
String result = book.insert(mB);
book.update(mB);
response.getWriter().print(result);

}
}


