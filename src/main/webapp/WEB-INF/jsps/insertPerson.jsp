<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2017/11/24
  Time: 9:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加管理员</title>
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <script src="static/js/bootstrap.js"></script>
</head>
<body>
<form action="insertPerson1" method="post">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">新增员工</h4>
            </div>

            <div class="modal-body">
                <div class="form-group">
                    <label for="exampleInputType">账号</label>
                    <input type="text" name="name" class="form-control" id="exampleInputType" >
                </div>
                <font color="red">${requestScope.registMessage }</font>
                <div class="form-group">
                    <label for="exampleInputNum">密码</label>
                    <input type="password" name="password" class="form-control" id="exampleInputNum" >
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
