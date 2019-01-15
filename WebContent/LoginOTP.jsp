<!--/////////////////////////////////////////////////////////////////////////////
//  LoginOTP.jsp- otp login form for student                                    //
//  version 2.0  (Date - 03/20/2018)                                           //
//  Language:    HTML5,Java                                                    //
//  Platform:    Windows 10 Pro                                                //
//  Application: Shuttle U Home CSE686 - Internet Programming                  //
//  Author:      Nitish Kumar, Syracuse University                             //
/////////////////////////////////////////////////////////////////////////////////
/*
 *   Purpose
 *   ------------------
 *   Form for student to enter and validate otp received on mail
 *   
 */-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OTP</title>
<link href="css/registration.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/FormValidation.js"></script>
</head>
<body class="body">
<div id="topBanner" class="regbanner">
			<h1 align="center" style="color: white">Syracuse University</h1>
			<h2 align="center" style="color: white">Shuttle-U-Home Online</h2>
		</div><br>
<form name='otp' method="post" action="StudentController">
<div class="division" align="center">
<fieldset class="fieldset">
<legend align="top"> <font color="blue">Login OTP</font></legend>

<table align="center">
<tr>
<td class="fonts">OTP:</td>
<td class="fonts"><input type="text" name="otp" id="otp" class="text"></input></td></tr>
<tr>
<tr>
<td>&nbsp;<input type="hidden" value="loginotp" name="action"></td>
<td><input type="Submit" value="Submit" onclick="return otpValidate()"></input></td>
<td><input type="reset" value="Reset"/></td>

</tr>
</table>
</fieldset>
</div>
</form>
</body>
</html>