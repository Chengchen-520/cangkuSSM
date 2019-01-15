<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.cdc.pojo.C_P" %>
<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2017/11/24
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <script src="static/js/bootstrap.js"></script>
    <title>操作记录列表</title>
</head>
<body>
<!-- 搭建显示页面 -->
<div class="container">
    <!-- 标题 -->
    <div class="row">
        <div class="col-md-12">
            <h1><%=session.getAttribute("username")%>  操作记录为</h1>
        </div>
    </div>
    <!-- 按钮 -->
    <div class="row">
        <div class="col-md-6 col-md-offset-9">
            <input class="btn btn-info  btn-lg col-md-4" type="button" name="Submit" value="返回>>" onclick="javascript:window.history.back(-1);">
        </div>
    </div>
    <hr/>
    <!-- 显示表格数据 -->
    <div class="row">
        <div class="col-md-12">
            <table class="table table-bordered table table-hover" >
                <tr>
                    <th>#</th>
                    <th>姓名</th>
                    <th>操作</th>
                    <th>货物名称</th>
                    <th>数量</th>
                </tr>
                <c:forEach items="${cpList}" var="item" varStatus="Status">
                    <tr>
                        <td>${Status.count }</td>
                        <td>${item.userName}</td>
                        <td><b>${item.operation}</b></td>
                        <td>${item.cargoName}</td>
                        <td>${item.number }</td>

                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>

</div>
</body>
</html>
