<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 04/01/2020
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加书籍页面</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <br>
    <p class="h1">添加书籍页面</p>
    <hr>
    <br>
    <div class="row justify-content-start">
        <div class="col-6" >
            <form action="${pageContext.request.contextPath}/book/addBook" method="post">
                <div class="form-group">
                    <p class="h3">BookName</p>
                    <input type="text" class="form-control" name="bookName" placeholder="请输入书籍名" required>
                </div>
                <div class="form-group">
                    <p class="h3">BookCounts</p>
                    <input type="text" class="form-control" name="bookCounts" placeholder="请输入书籍数量" required>
                </div>
                <div class="form-group">
                    <p class="h3">BookDetails</p>
                    <input type="text" class="form-control" name="bookDetails" placeholder="请输入书籍内容" required>
                </div>
                <button type="submit" class="btn btn-primary">添加</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>
