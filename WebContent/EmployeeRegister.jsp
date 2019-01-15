<!--/////////////////////////////////////////////////////////////////////////////
// EmployeeRegister.jsp-Registration form for employee                         //
//  version 2.0  (Date - 03/26/2018)                                           //
//  Language:    HTML5,Java                                                    //
//  Platform:    Windows 10 Pro                                                //
//  Application: Shuttle U Home CSE686 - Internet Programming                  //
//  Author:      Nitish Kumar, Syracuse University                             //
/////////////////////////////////////////////////////////////////////////////////
/*
 *   Purpose
 *   ------------------
 *   Registration form for employee is displayed which can only be accessed by admin
 *   
 */-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Register</title>
<link href="css/registration.css" rel="stylesheet" type="text/css">
<link href="css/styles.css" rel="stylesheet" type="text/css">
</head>
<body class="body">
<%String sname = (String) session.getAttribute("name");
			if (null == sname) { // check if session is null
				request.setAttribute("Error", "Session has ended.  Please login.");
				RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");//if session is null redirect to login page
				rd.forward(request, response);
			}%>
<form name='Empregistration' method="post" action="StudentController" style="padding-top: 50px">
<div class="division" align="center">
<table align="center" class="register">
<caption class="tabletitle">Sign Up here.</caption>
<tr>
<td class="fonts">Name:</td>
<td class="fonts"><input type="text" name="empName" id="empName" class="text"></input></td></tr>
<tr>
<td class="fonts">Email id:</td>
<td><input type="text" name="eid" id="eid" class="text"></input></td></tr>
<tr>
<td class="fonts">Password:</td>
<td><input type="password" name="pwd" id="pwd" class="text"></input></td></tr>
<tr>
<td class="fonts">Confirm Password:</td>
<td><input type="password" name="cpwd" id="cpwd" class="text"></input></td></tr>
<tr>
<td class="fonts">Phone No.:</td>
<td><input type="text" name="phone" id="phone" class="text"></input></td></tr>
<tr>
<td>&nbsp;<input type="hidden" value="addEmployee" name="action"></td>
<td><input class="form-button" type="Submit" value="Submit"></input>
<input class="form-button" type="reset" value="Reset"/></td>
</tr>
</table>

</div>
</form>
</body>
</html>