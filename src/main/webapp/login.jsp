<!doctype html>
<html>
    <head>
        <meta charset='utf-8'>
        <title>Login</title>
        <style>
           <%@include file="/WEB-INF/css/style.css"%>
        </style>
    </head>
    <body>
        <form action='/WebApp/login' method='POST'>
            <p>You are not login!</p>
            <label>Login: <input type='text' name='login'><br /><br />
            <label>Password: <input type='password' name='password'><br /><br />
            <input type='submit' value='Log in'>
        </form>
    </body>
</html>