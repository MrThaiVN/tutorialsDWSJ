<%-- 
    Document   : login
    Created on : Aug 22, 2018, 7:18:41 PM
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
        <div class="main">
            <form action="Login" method="POST">
                <h1><span>ADMIN</span><label>Login</label></h1>
                <div class="inset">
                    <p>
                        <label for="email">USERNAME</label>
                        <input type="text" name="username" placeholder="" required=""/>
                    </p>
                    <p>
                        <label for="password">PASSWORD</label>
                        <input type="password" name="password" placeholder="" required=""/>
                    </p>
                    <p>
                        <input type="checkbox" name="remember" id="remeber">
                        <label for="remember">Remember me</label>
                    </p>
                </div>
                <p class="p-container">
                    <span><a href="#">Forget password ?</a></span>
                    <input type="submit" value="Login">
                </p>
            </form>
        </div>
    </body>
</html>
