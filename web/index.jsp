<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 03/01/2020
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <style>
    a{
      text-decoration: none;
      color: black;
    }
    h3{
      width: 180px;
      height: 38px;
      margin: 100px auto;
      text-align: center;
      line-height: 38px;
      background: deepskyblue;
      border-radius: 5px;
    }
  </style>
  <body>
  <h3>
    <%--${pageContext.request.contextPath}”的作用是取出部署的应用程序名，
    这样不管如何部署，所用路径都是正确的。--%>
    <a href="${pageContext.request.contextPath}/book/allBooks">进入书籍页面</a>
  </h3>
  </body>
</html>
