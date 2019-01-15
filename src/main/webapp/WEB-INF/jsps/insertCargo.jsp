<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2017/11/24
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加货物信息</title>
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <script src="static/js/bootstrap.js"></script>
</head>
<body>
<div class="modal show" id="loginModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close">×</button>
                <h1 class="text-center text-primary">添加货物</h1>
            </div>
            <div class="modal-body">
                <form class="form col-md-12 center-block" id="loginForm" action="insertCargo1" method="post">
                    <div class="form-group-lg"  id="accountDiv">
                        <label class="sr-only" for="inputAccount">货物名称</label>

                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></div>
                            <input class="form-control" id="inputAccount" name="name" type="text" placeholder="货物名称" required autofocus>
                        </div>
                        <font color="red">${requestScope.addMessage }</font>
                    </div>
                    <br>
                    <div class="form-group-lg"  id="typeDiv">
                        <label class="sr-only" for="inputType">货物类型</label>
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-menu-right"  aria-hidden="true"></span></div>
                            <input class="form-control" id="inputType" name="type" type="text" placeholder="货物类型" required autofocus>
                        </div>
                    </div>
                    <br/>
                    <div class="form-group-lg"  id="numDiv">
                        <label class="sr-only" for="inputNum">货物数量</label>
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-menu-right"  aria-hidden="true"></span></div>
                            <input class="form-control" id="inputNum" name="num" type="number" placeholder="货物数量" required autofocus>
                        </div>
                    </div>
                        <br/>
                    <div class="form-group">
                        <input  class="btn btn-default btn-lg col-md-6" type="button" name="Submit" value="返回>>" onclick="javascript:window.history.back(-1);"/>
                        <input class="btn btn-primary btn-lg col-md-6" id="btn_login" type="submit" value="提交>>"/>
                    </div>

                </form>
            </div>

            <div class="modal-footer">

            </div>
        </div>
    </div>
</div>
</body>
</html>
