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
    <title>steve的书籍CRUD系统</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
  </head>

  <body>
  <br>
  <br>
  <br>
  <br>
  <br>
  <p class="h1" align="center">steve的书籍CRUD系统</p>
  <br>
  <br>

    <%--${pageContext.request.contextPath}”的作用是取出部署的应用程序名，
    这样不管如何部署，所用路径都是正确的。--%>
  <div align="center">
    <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/book/allBooks">进入书籍页面</a>
  </div>

  </body>
</html>
