<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Portal</title>
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
    input[type="text"], input[type="password"], input[type="submit"] {
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
<form>
<table>
<tr>
<td><label>Admin Id Number:</label></td>
<td><input type="text" name="adminId" id="adminId"></td>
</tr>
<tr>
<td><label>Password:</label></td>
<td><input type="password" name="password" id="password"></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Login" formmethod="post" formaction="AdminServlet"></td>
</tr>
</table>
</form>
</body>
</html>
