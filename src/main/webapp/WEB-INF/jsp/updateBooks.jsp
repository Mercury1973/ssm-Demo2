<%--
  Created by IntelliJ IDEA.
  User: DCH
  Date: 2022/2/3
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍修改页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/books/updateBooks" method="post">
        <%--此处需要新加一个隐藏的id字段内容，因为在update时，需要传入4个字段，而目前只有名称，数量，详情三个 --%>
        <input type="hidden" name="bookID" value="${queryResult.bookID}">
        <%--name属性的值必须和数据库字段的名字一致，否则会报错；添加required属性之后，字段不能传空值--%>
        <div class="form-group">
            <label>书籍名称</label>
            <%--前端传进去哪个值，value中可以通过model中的键将该字段取出--%>
            <input type="text" name="bookName" class="form-control" value="${queryResult.bookName}" required>
        </div>
        <div class="form-group">
            <label>书籍数量</label>
            <input type="text" name="bookCounts" class="form-control" value="${queryResult.bookCounts}"  required>
        </div>
        <div class="form-group">
            <label>书籍价格</label>
            <input type="text" name="bookPrice" class="form-control" value="${queryResult.bookPrice}"  required>
        </div>
        <div class="form-group">
            <label>书籍详情</label>
            <input type="text" name="detail" class="form-control" value="${queryResult.detail}" required>
        </div>
        <input type="submit" class="form-control" value="修改">
    </form>
</div>
</body>
</html>
