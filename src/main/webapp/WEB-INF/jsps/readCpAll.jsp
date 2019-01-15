<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.cdc.pojo.C_P" %>
<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2017/11/24
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查阅操作记录</title>
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <script src="static/js/bootstrap.js"></script>
</head>
<body >
<!-- 搭建显示页面 -->
<div class="container">
    <!-- 标题 -->
    <div class="row">
        <div class="col-md-12">
            <h1><b>Hello,Boss!</b></h1>
        </div>
    </div>
    <!-- 按钮 -->
    <div class="row">
        <div class="col-md-4 col-md-offset-8">
            <a href="findPersonAll"><input class="btn btn-success" type="button" value="员工管理 "/> </a>
            <a href="pwdReturn"><input class="btn btn-warning" type="button" value="修改密码"></a>
            <input class="btn btn-danger " type="button" value="退出 " onclick="location='/exit'"/>
        </div>
    </div>
    <hr/>
    <!-- 显示表格数据 -->
    <div class="row">
        <div class="col-md-12">
            <h2>操作记录</h2>
        </div>
        <div class="col-md-12">
            <table class="table table-striped">
                <tr>
                    <th>#</th>
                    <td>姓名</td>
                    <td>操作</td>
                    <td>货物名</td>
                    <td>数量</td>
                </tr>
                <c:forEach items="${pageInfo.list}" var="item" varStatus="Status">
                    <tr>
                        <td>${Status.count }</td>
                        <td>${item.userName}</td>
                        <td><b>${item.operation}</b></td>
                        <td>${item.cargoName}</td>
                        <td>${item.number }</td>
                    </tr>
                </c:forEach>
            </table>
            <nav>
                <div class="col-md-8">
                    <h4>当前 ${pageInfo.pageNum }页,总${pageInfo.pages }
                        页,总 ${pageInfo.total } 条记录</h4><br/>
                </div>

                <ul class="pager">
                    <li><c:if test="${pageInfo.hasPreviousPage }">
                        <a href="findCpAll?pageNo=${pageInfo.pageNum-1}">上一页</a>
                    </c:if></li>
                    <li><c:if test="${pageInfo.hasNextPage }">
                        <a href="findCpAll?pageNo=${pageInfo.pageNum+1}">下一页</a>
                    </c:if></li>
                </ul>
            </nav>
        </div>
    </div>

</div>
</body>
</html>
