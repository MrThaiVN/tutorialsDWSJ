<%-- 
    Document   : usermanegement
    Created on : Aug 22, 2018, 7:54:05 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <td>username</td>
                <td>password</td>
                <td>role</td>
            </tr>
            <c:forEach items="${ListUser}" var="u">
                <tr>
                    <td>
                        <c:out value="${u.username}"/>
                    </td>
                    <td>
                        <c:out value="${u.password}"/>
                    </td>
                    <td>
                        <c:out value="${u.role}"/>
                    </td>
                    <td>
                        <a href="Delete?userid=<c:out value="${u.userid}"/>">Delete</a>
                    </td>
                    <td>
                        <a href="Edit?userid=<c:out value="${u.userid}"/>">Edit</a>
                    </td>


                </tr>
            </c:forEach>
        </table>
        <h1>
            Create User !
        </h1>
        <form action="Create" method="POST">
            Username: <input type="text" name="username"/>
            Password: <input type="password" name="password"/>
            Role: <input type="text" name="role"/>
            <input type="submit" value="Create"/>
        </form>
    </body>
</html>
