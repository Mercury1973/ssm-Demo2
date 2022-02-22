<%--
  Created by IntelliJ IDEA.
  User: DCH
  Date: 2022/2/2
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增书籍</title>
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
                    <small>新增书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/books/addBooks" method="post">
        <%--name属性的值必须和数据库字段的名字一致，否则会报错；添加required属性之后，字段不能传空值--%>
        <div class="form-group">
            <label>书籍名称</label>
            <input type="text" name="bookName" class="form-control" required>
        </div>
        <div class="form-group">
            <label>书籍数量</label>
            <input type="text" name="bookCounts" class="form-control" required>
        </div>
        <div class="form-group">
            <label>书籍价格</label>
            <input type="text" name="bookPrice" class="form-control" required>
        </div>
        <div class="form-group">
            <label>书籍详情</label>
            <input type="text" name="detail" class="form-control" required>
        </div>
        <input type="submit" class="form-control" value="添加">
    </form>
</div>
</body>
</html>
