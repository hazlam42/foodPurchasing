<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Registration Form</title>
    <link rel="stylesheet" href="resources/register/css/style.css">
</head>
<body>
<h1 class="register-title">Welcome</h1>
<form method="post" action="signUp" class="register">
    <div class="register-switch">
        <input type="radio" name="sex" value="F" id="sex_f" class="register-switch-input" checked>
        <label for="sex_f" class="register-switch-label">Female</label>
        <input type="radio" name="sex" value="M" id="sex_m" class="register-switch-input">
        <label for="sex_m" class="register-switch-label">Male</label>
    </div>
    <input type="email" class="register-input" placeholder="Email address">
    <input type="password" class="register-input" placeholder="Password">
    <input type="submit" value="Create Account" class="register-button"><br>
    <a href="home.jsp">Home</a>
</form>

</body>
</html>
