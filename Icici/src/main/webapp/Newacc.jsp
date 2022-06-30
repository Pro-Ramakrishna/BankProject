<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New User Registration</title>
<style>
form
{
color:white;
}
</style>
</head>
<body>
<center>
<table><img src="4.jpg" width="500px">

<h1 style="color:lavender">BEST BANK</h1></td></tr>
<a href="Home.jsp">Home</a>&emsp;
<a href="Newacc.jsp">New Account</a>&emsp;
<a href="Bal.jsp">Balance</a> &emsp;&emsp;
<a href="Deposit.jsp">Deposit</a> &emsp;&emsp;
<a href="Withdraw.jsp">WithDraw</a> &emsp;&emsp;
<a href="Transfer.jsp">Transfer</a>&emsp;&emsp;
<a href="Close.jsp">Close Account</a>&emsp;&emsp;
<a href="Admin.jsp">About Us</a><p></p>

<form action="NewacCode.jsp" method="post">
<h2>Account Opening form</h2>

User Name:<input type="text" name="name"><p></p>
Password:<input type="password" name="pwd"><p></p>
Re Password:<input type="password" name="pwd1"><p></p>
Amount:<input type="text" name="amt"><p></p>
Account no:<input type="text" name="num"><p></p>
Address:<textarea rows="2"  name="Add"></textarea><p></p>
Phone:<input type="tel" name="phn"><p></p>
<input type="submit" value="Submit">&emsp;
<input type="reset" value="Clear">
</form>
</table>
</center>
</body>
</html>