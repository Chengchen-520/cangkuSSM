<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>货物管理</title>
    <link rel="stylesheet" href="/static/css/bootstrap.css">
    <script src="/static/js/bootstrap.js"></script>
</head>
<body>
<%
    String name = (String)session.getAttribute("username");
%>
<!-- 搭建显示页面 -->
<div class="container">
    <!-- 标题 -->
        <div class="col-md-12">
            <h1><span class="text-primary">Hello <%=name%> !</span></h1>
        </div>
    <!-- 按钮 -->
    <div class="row">
        <div class="col-md-4 col-md-offset-8">
            <a href="turning2"><input class="btn btn-success" type="button" value="添加货物 "/> </a>
            <a href="findByName">  <input class="btn btn-info" type="button" value="查询记录"></a>
            <a href="turning4"><input class="btn btn-warning" type="button" value="修改密码"></a>
            <input class="btn btn-danger " type="button" value="退出 " onclick="location='/exit'"/>
        </div>
    </div>
    <hr/>
    <!-- 模糊查询 -->
        <div class="col-md-3 col-md-offset-9">
            <form action="/search" method="post">
                <div class="input-group">
                    <input type="text"  class="form-control" name="like">
                    <span class="input-group-btn">
                            <input class="btn btn-default" type="submit" value="搜索"/>
                    </span>
                </div><!-- /input-group -->
            </form>
        </div>
    <br/><hr/>
    <!-- 显示表格数据 -->
    <div class="row">
        <div class="col-md-12">
            <table class="table table-striped">
                <tr>
                    <th>#</th>
                    <th>货物名称</th>
                    <th>货物类型</th>
                    <th>数量</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${cargoList}" var="item" varStatus="Status">
                    <tr>
                        <td>${Status.count }</td>
                        <td>${item.name}</td>
                        <td>${item.type}</td>
                        <td>${item.num}</td>
                        <th>
                            <a href="turing/${item.name}">
                            <button class="btn btn-primary btn-sm">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                修改
                            </button>
                            </a>

                            <a href="deleteCargo/${item.name}">
                            <button class="btn btn-danger btn-sm">
                                <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                               删除
                            </button>
                            </a>
                        </th>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>

</div>

</body>
</html>
