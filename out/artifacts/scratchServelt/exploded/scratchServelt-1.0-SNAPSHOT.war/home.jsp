<%@page import="ru.innopolis.modules.Customers"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
         pageEncoding="US-ASCII"%>

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Navigation  page</title>
  <link rel="stylesheet" href="resources/home/css/style.css">
</head>
<body>
<h1>Online food purchasing shop</h1>
  <nav class="container">
    <ul>
      <li class="nav-item"><a href="home.jsp" class="nav-link">Home</a></li>
      <li class="nav-item"><a href="signIn.jsp" class="nav-link">Sign in</a></li>
      <li class="nav-item"><a href="index.html" class="nav-link">Products</a></li>
      <li class="nav-item"><a href="shopingCart.jsp" class="nav-link">Shoping Cart</a></li>
    </ul>
  </nav>

<%Customers user = (Customers) session.getAttribute("User"); %>
Welcome <%=user.getUserName() %>&ensp;<%=user.getUserLastname() %>!  <br>
<strong>Email</strong>: <%=user.getUserName() %><br>
<strong>Email</strong>: <%=user.getUserEmail() %><br>
<strong>Country</strong>: <%=user.getUserCountry() %><br>
<strong>Phone</strong>: <%=user.getUserPhone() %><br>

<div class="logout">
<br>
<form action="Logout" method="post">
  <p class="submit"><input type="submit" name="commit" value="Logout"></p>
</form>
</div>
</body>
</html>
