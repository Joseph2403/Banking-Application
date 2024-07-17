<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
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
    input[type="submit"] {
        padding: 10px;
        margin: 5px 0;
        width: 100%;
        box-sizing: border-box;
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
<input type="submit" value="Register New User" formmethod="post" formaction="Register.jsp">
<input type="submit" value="Remove User" formmethod="post" formaction="RemoveUser.jsp">
<input type="submit" value="Modify User Details" formmethod="post" formaction="ModifyUser.jsp">
<input type="submit" value="See User Details" formmethod="post" formaction="UserDetails.jsp">
</form>
</body>
</html>
