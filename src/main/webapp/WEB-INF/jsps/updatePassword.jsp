<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2017/11/24
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>你好，
        <%=session.getAttribute("username")%>
    </title>
    <link rel="stylesheet" href="/static/css/bootstrap.css">
    <script src="/static/js/bootstrap.js"></script>
</head>
<body>
<form  action="updatePassword1" method="post">
<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title">您要更改用户是:<%=request.getSession().getAttribute("username")%></h4>
        </div>

        <div class="modal-body">
            <div class="form-group col-xs-6">
                <label for="exampleInputPwd1">旧密码</label>
                <input type="text" name="password" class="form-control" id="exampleInputPwd1" >
            </div>

            <div class="form-group col-xs-6">
                <label for="exampleInputPwd2">新密码</label>
                <input type="password" name="newPassword" class="form-control" id="exampleInputPwd2" >
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
