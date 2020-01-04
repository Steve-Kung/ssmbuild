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
    <p class="h1">修改书籍页面</p>
    <hr>
    <br>
    <div class="row justify-content-start">
        <div class="col-6" >
            <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
                <input type="hidden" name="bookId" value="${updateBook.bookId}">
                <div class="form-group">
                    <p class="h3">BookName</p>
                    <input type="text" class="form-control" name="bookName" required value="${updateBook.bookName}">
                </div>
                <div class="form-group">
                    <p class="h3">BookCounts</p>
                    <input type="text" class="form-control" name="bookCounts" required value="${updateBook.bookCounts}">
                </div>
                <div class="form-group">
                    <p class="h3">BookDetails</p>
                    <input type="text" class="form-control" name="bookDetails" required value="${updateBook.bookDetails}">
                </div>
                <button type="submit" class="btn btn-primary">确定修改</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>
