<%-- 
    Document   : index
    Created on : Feb 14, 2014, 2:16:15 PM
    Author     : ghazali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Login Form</title>
  
  
  
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
  <html lang="en-US">
  <head>

    <meta charset="utf-8">

    <title>Login</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Varela+Round">

    <!--[if lt IE 9]>
  <script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
 <![endif]-->

  </head>

  <body>

    <div class="container">

      <div id="login">

          <h2><span ><img src="img/user-login-image.png">ID<i>Ver</i></span></h2>

        <form action="login.jsp" method="POST">

          <fieldset>
            <p><label for="email">Silahkan masukkan username  & password anda</label></p>
            <p><input type="email" id="email" name="email" placeholder="Email" ></p>

            <p><label for="password"></label></p>
            <p><input type="password" id="password" name="password" placeholder="password"></p>
              <p><input type="checkbox"><t>ingat saya</t><a href="" style="color:#c3c3c3;"> lupa password ?</a></p>
            <p><input type="submit" name="submit" Value="Login To IDVer"/></p>

          </fieldset>

        </form>

      </div> <!-- end login -->

    </div>

  </body>	
</html>
  
  
</body>
</html>
