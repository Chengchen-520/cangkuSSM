<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.cdc.pojo.Person" %><%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2017/12/26
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询管理员信息</title>
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <script src="static/js/bootstrap.js"></script>
</head>
<body>
<!-- 搭建显示页面 -->
<div class="container">
    <!-- 标题 -->
    <div class="row">
        <div class="col-md-12">
            <h1>Hello,Boss!</h1>
        </div>
    </div>
    <!-- 按钮 -->
    <div class="row">
        <div class="col-md-6 col-md-offset-9">
            <input class="btn btn-info " type="button" name="Submit" value="返回>>" onclick="javascript:window.history.back(-1);">
            <a href="/turningPerson"><input class="btn btn-success" type="button" value="新增员工"></a>
        </div>
    </div>
    <hr/>
    <!-- 显示表格数据 -->
    <div class="row">
        <div class="col-md-12">
            <h3>员工信息</h3>
        </div>
        <div class="col-md-12">
            <table class="table table-bordered table table-hover" >
                <tr>
                    <th>#</th>
                    <td>姓名</td>
                    <td>身份</td>
                    <td>操作</td>
                </tr>
                <c:forEach items="${personList}" var="item" varStatus="Status">
                    <tr>
                        <td>${Status.count }</td>
                        <td>${item.name}</td>
                        <td>${item.identity}</td>
                        <td>
                        <a href="deletePerson/${item.name}">
                            <button class="btn btn-warning btn-sm">
                                <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                删除
                            </button>
                        </a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>

</div>

</body>
</html>
