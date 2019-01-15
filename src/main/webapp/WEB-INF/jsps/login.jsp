<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <script src="static/js/bootstrap.js"></script>
    <script>
        //点击更新验证码
        function change(){
            document.getElementById("code").src="validate.action?a="+new Date();
        }
    </script>
</head>

<body>
<!--使用模态框的方式模拟一个登陆框-->
<div class="modal show" id="loginModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close">×</button>
                <h1 class="text-center text-primary">登录</h1>
            </div>
            <div class="modal-body">
                <form class="form col-md-12 center-block" id="loginForm" action="login_check" method="post">
                    <div class="form-group-lg"  id="accountDiv">
                        <label class="sr-only" for="inputAccount">账号</label>
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></div>
                            <input class="form-control" id="inputAccount" name="name" type="text" placeholder="账号" required autofocus>
                        </div>
                        <div class="hidden text-center" id="accountMsg"><span class="glyphicon glyphicon-exclamation-sign"></span>用户名不存在</div>
                    </div>
                    <br>
                    <div class="form-group-lg" id="pwdDiv">
                        <label class="sr-only" for="inputPassword">密码</label>
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                            <input class="form-control" id="inputPassword" name="password" type="password" placeholder="密码" required>
                            <div class="input-group-addon"><span class="glyphicon glyphicon-eye-open"></span></div>
                        </div>
                        <div class="hidden text-center" id="pwdMsg"><span class="glyphicon glyphicon-exclamation-sign"></span>用户名密码错误</div>
                    </div>
                    <br/>
                    <div class="form-inline">
                        <label class="radio-inline">
                            <input type="radio" name="identity" id="optionsRadios1" value="管理员" checked> <b>管理员</b>
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="identity" id="optionsRadios2" value="老板"><b>老板</b>
                        </label>
                        <input placeholder="验证码" type="text" id="codetext" name='codetext' style="width: 100px" class="form-control form-horizontal col-md-offset-4 ">
                        <img alt="" src="validate.action" width="120px" height="28px" id='code' onclick="change()"  class=" form-horizontal ">
                        <span onclick="change()"></span>
                    </div><br/>

                    <div class="form-group">
                        <input class="btn btn-primary btn-lg col-md-6 col-md-offset-3" id="btn_login" type="submit" value="登录" />
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