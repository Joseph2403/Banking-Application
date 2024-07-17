<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    form {
        background: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    table {
        margin: auto;
    }
    input[type="text"], input[type="email"], input[type="number"], input[type="date"], input[type="submit"] {
        padding: 10px;
        margin: 5px 0;
        width: 100%;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<form action="RegisterServlet" method="post">
<table>
<tr>
<td><label>Full Name:</label></td>
<td><input placeholder="Enter user's Full Name" type="text" name="fname" id="fname" required></td>
</tr>

<tr>
<td><label>Address:</label></td>
<td><input placeholder="Enter user's Address" type="text" name="address" id="address" required></td>
</tr>

<tr>
<td><label>Email Id:</label></td>
<td><input placeholder="Enter user's Email ID" type="email" name="emailid" id="emailid" required></td>
</tr>

<tr>
<td><label>Phone Number:</label></td>
<td><input placeholder="Enter user's Phone Number"  type="text" name="phoneno" id="phoneno" required></td>
</tr>

<tr>
<td><label>Date of Birth:</label></td>
<td><input placeholder="Enter user's Date of Birth" type="date" name="dob" id="dob" required></td>
</tr>

<tr>
<td><label>Account Type:</label></td>
<td><input placeholder="Enter user's Account Type" type="text" name="acctype" id="acctype" required></td>
</tr>

<tr>
<td><label>ID Proof:</label></td>
<td><input placeholder="Enter user's Aadhar Number" type="text" name="idproof" id="idproof" required></td>
</tr>

<tr>
<td><label>Initial Balance:</label></td>
<td><input placeholder="Enter user's Initial Balance" type="number" name="inibal" id="inibal" required></td>
</tr>

<tr>
<td colspan=2><input type="submit" value="Register User"></td>
</tr>

</table>
</form>
</body>
</html>
