<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Login Form</title>
  <link rel="stylesheet" href="resources/login/style.css">
</head>
<body>
<section class="container">
  <div class="login">
    <h1>Login to Web App</h1>
    <form method="post" action="signIn">
      <p><input type="text" name="login" value="" placeholder="Email"></p>
      <p><input type="password" name="password" value="" placeholder="Password"></p>
      <p class="remember_me">
        <label>
          <input type="checkbox" name="remember_me" id="remember_me">
          Remember me on this computer
        </label>
      </p>
      <p class="submit"><input type="submit" name="commit" value="Login"></p>
      <a href="register.jsp">Register</a>
    </form>
  </div>

  <div class="login-help">
    <p>Forgot your password? <a href="signIn.jsp">Click here to reset it</a>.</p>
  </div>
</section>

</body>
</html>