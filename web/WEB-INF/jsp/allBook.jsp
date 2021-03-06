<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 03/01/2020
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
    <br>
    <div class="row clearfix ">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表</small>
                </h1>
            </div>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col" align="left">
            <span>
                <a class="btn btn-success" href="${pageContext.request.contextPath}/book/toAddBookPage">添加书籍</a>
            </span>
            <span>
                <a class="btn btn-secondary" href="${pageContext.request.contextPath}/book/allBooks">查看所有书籍</a>
            </span>
        </div>
        <div class="col" align="right">
            <span>
                <form class="form-inline" method="post" action="${pageContext.request.contextPath}/book/selectBookByName">
                    <div class="form-group mb-2">
                            <p class="h4">搜索书籍</p>
                        </div>
                    <div class="form-group mx-sm-3 mb-2">
                        <input type="text" class="form-control" placeholder="输入书籍名字" name="bookName">
                    </div>
                    <button type="submit" class="btn btn-primary mb-2">搜索</button>
                </form>
            </span>
        </div>
    </div>
    <div style="margin-right: 20%" align="right">
        <span style="color: red; font-size: large">
            ${message}
        </span>
    </div>

    <br>

    <div class="row clearfix ">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>书籍ID</th>
                    <th>书籍名称</th>
                    <th>书籍数量</th>
                    <th>书籍内容</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="book" items="${msg}">
                    <tr>
                        <td>${book.bookId}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.bookDetails}</td>
                        <td>
                            <a class="btn btn-outline-primary btn-sm" href="${pageContext.request.contextPath}/book/toUpdateBookPage?bookId=${book.bookId}">修改</a>
                            <a class="btn btn-outline-danger btn-sm" href="${pageContext.request.contextPath}/book/deleteBook/${book.bookId}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
