<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍列表</title>
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表——————显示所有书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <%--toAddBooks请求--%>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/books/toAddBooksPages">新增书籍</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/books/allBook">显示全部书籍</a>
        </div>


        <div class="col-md-8 column">
            <%--查询书籍请求--%>
            <form class="form-inline" action="${pageContext.request.contextPath}/books/queryBooks" method="post" style="float: right">
                <span style="color:red; font-weight:bold">${error}</span>
                <input type="text" name="queryBookName" class="form-control" placeholder="请输入需要查询的书籍名称">
                <input type="submit" value="查询" class="btn btn-primary">
            </form>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名字</th>
                    <th>书籍数量</th>
                    <th>书籍价格</th>
                    <th>书籍详情</th>
                    <th>操作</th>
                </tr>
                </thead>
                <%--书籍从数据库中查询出来，从这个list中遍历出来：foreach遍历--%>
                <tbody>
                <%--
                    foreach遍历，会在文件头部导入：<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                --%>
                <c:forEach var="books" items="${queryResult}">
                    <tr>
                        <td>${books.bookID}</td>
                        <td>${books.bookName}</td>
                        <td>${books.bookCounts}</td>
                        <td>${books.bookPrice}</td>
                        <td>${books.detail}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/books/toUpdateBooksPages?id=${books.bookID}">修改</a>
                            &nbsp; | &nbsp;
                            <a href="${pageContext.request.contextPath}/books/deleteBooks/${books.bookID}">删除</a>
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
