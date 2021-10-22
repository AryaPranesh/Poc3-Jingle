package com.register.java;


import java.sql.Date;

public class BookRoom {
private String userName,roomNumber,noOfP,checkIn,checkOut;
public BookRoom() {
super();
}
public BookRoom(String userName, String roomNumber, String noOfP, String checkIn, String checkOut) {
super();
this.userName = userName;
this.roomNumber = roomNumber;
this.noOfP = noOfP;
this.checkIn = checkIn;
this.checkOut = checkOut;
}

public String getUserNname() {
return userName;
}
public void setUname(String userName) {
this.userName = userName;
}
public String getRoomNumber() {
return roomNumber;
}
public void setRoomnumber(String roomNumber) {
this.roomNumber = roomNumber;
}
public String getnoOfP() {
return noOfP;
}
public void setnoOfP(String noOfP) {
	this.noOfP= noOfP;
}
public String getStayfrom() {
return checkIn;
}
public void setStayfrom(String checkIn) {
this.checkIn = checkIn;
}
public String getStayto() {
return checkOut;
}
public void setStayto(String checkOut) {
this.checkOut = checkOut;
}}
