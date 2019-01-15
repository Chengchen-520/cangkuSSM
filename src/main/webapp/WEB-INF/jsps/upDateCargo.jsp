<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2017/11/24
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新货物</title>
    <link rel="stylesheet" href="/static/css/bootstrap.css">
    <script src="/static/js/bootstrap.js"></script>
</head>
<body>
<%

    String  s= (String) request.getAttribute("name");
    request.getSession(true).setAttribute("cargoname",s);
%>
<form action="/upDateCargo1" method="post">
<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title">您要更改的是:<%=request.getAttribute("name")%></h4>
        </div>

        <div class="modal-body">
            <div class="form-group">
                <label for="exampleInputType">货物类型</label>
                <input type="text" name="type" class="form-control" id="exampleInputType" >
            </div>
            <div class="form-group">
                <label for="exampleInputNum">货物数量</label>
                <input type="number" name="num" class="form-control" id="exampleInputNum" >
            </div>
        </div>
        <div class="modal-footer">
            <input  class="btn btn-default " type="button" name="Submit" value="返回>>" onclick="javascript:window.history.back(-1);"/>
            <input class="btn btn-primary" type="submit" value="提交>>" />
        </div>
    </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</form>
</body>
</html>
