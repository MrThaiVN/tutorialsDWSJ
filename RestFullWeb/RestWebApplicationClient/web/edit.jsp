<%-- 
    Document   : edit
    Created on : Aug 22, 2018, 8:32:02 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <form action="Edit" method="POST">
            Username: <input type="text" name="username"/>
            Password: <input type="text" name="password"/>
            Role: <input type="text" name="role"/>
            <input type="submit" value="Create"/>
        </form>
    </body>
</html>
