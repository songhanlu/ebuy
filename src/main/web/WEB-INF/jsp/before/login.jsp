<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/statics/before_moban/css/style.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/jquery-1.11.1.min_044d0927.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/jquery.bxslider_e88acd1b.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/menu.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/select.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/lrscroll.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/iban.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/fban.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/f_ban.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/mban.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/bban.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/hban.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/tban.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/lrscroll_1.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/gVerify.js"></script>
    <script type="text/javascript">
        /*$(function () {*/
            /*$("#loginName").blur(function () {
                var loginName = this.value;
                if (loginName == "" || loginName == null){
                    $("#loginNameHidden").css("color","red");
                    $("#loginNameHidden").html("用户名不能为空");
                    return false;
                }
                $("#loginNameHidden").html("");
            })
            //密码的验证方式
            $("#password").blur(function() {
                var pass = this.value;
                if (pass == null || pass == "") {
                    $("#passwordHidden").css("color","red");
                    $("#passwordHidden").html("密码不能为空！");
                    return false;
                }
                $("#passwordHidden").html("");
            })*/
            /*$("#loginName").blur(function () {
                var loginName = $(this).value;
                if (loginName == ""|| loginName == null){
                    alert("用户名不能为空");
                    return;
                }else {

                }
            })
            $("#password").blur(function () {
                var password = $(this).value;
                if (password == ""|| password == null){
                    alert("密码不能为空");
                    return;
                }
            })*/
        /*function submit(loginName,password) {
            $("#loginName").submit(function () {
                var loginName = $(this).value;
                var password = $(this).value;
                if (loginName == ""|| loginName == null){
                    alert("用户名不能为空");
                    return false;
                }
                if (password == ""|| password == null) {
                    alert("用户名不能为空");
                    return false;
                }
            })
        }*/


        /*})*/
    </script>

    <title>ebuy</title>
</head>
<body>
<!--Begin Header Begin-->

<!--End Header End-->
<!--Begin Login Begin-->
<div class="log_bg">
    <div class="top">
        <div class="logo"><a href="${pageContext.request.contextPath}/index/shl"><img src="${pageContext.request.contextPath}/statics/before_moban/images/logo.png" /></a></div>
    </div>
    <div class="login">
        <div class="log_img"><img src="${pageContext.request.contextPath}/statics/before_moban/images/l_img.png" width="611" height="425" /></div>
        <div class="log_c" style="height: 500px;">
            <form action="${pageContext.request.contextPath}/user/beforeLogin" method="post" onsubmit="return check()">
                <table border="0" style="width:400px; font-size:14px; margin-top:30px;" cellspacing="0" cellpadding="0">
                    <tr height="50" valign="top">
                        <td width="150">&nbsp;</td>
                        <td>
                            <a href="/login.html"><span class="fl" style="font-size:24px;">登录</span></a>
                            <span class="fr">还没有商城账号，<a href="${pageContext.request.contextPath}/register" style="color:#ff4e00;">立即注册</a></span>
                        </td>
                    </tr>
                    <tr height="70">
                        <td>用户名</td>
                        <td><input type="text" name="loginName" id="loginName" value="" class="l_user" /></td>
                    </tr>
                    <tr height="70">
                        <td>密&nbsp; &nbsp; 码</td>
                        <td><input type="password" name="password" id="password" value="" class="l_pwd" /></td>
                    </tr>
                    <tr height="50">
                        <td>验证码：</td>
                        <td>
                            <input type="text" id="code_input" style="width: 250px; height: 35px;" value="" placeholder="请输入验证码"/>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td align="right"><div id="v_container" style="width: 100px;height: 30px;margin: 5px auto; "></div>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="font-size:12px; padding-top:20px;">
                            <h3 style="color: red"><div id="loginDiv">${message}</div></h3>
                        </td>
                    </tr>
                    <tr height="60">
                        <td>&nbsp;</td>
                        <td><input type="submit" value="登录" class="log_btn" /></td>
                    </tr>
                </table>
            </form>
            <div style="width: 100%;padding: 0 auto;margin-left: 150px;">
                <button id="forgetPass" style="color: #f6ffdf;background-color: #1cbcff">忘记密码??点我！</button>
            </div>
            <script>
                $(function () {
                    var verifyCode = new GVerify("v_container");
                    window.res = false;
                    $("#code_input").blur(function () {
                        res = verifyCode.validate(document.getElementById("code_input").value);
                    });
                });
                function check() {
                    if(res){
                        return true;
                    }else{
                        $("#loginDiv").html("验证码错误");
                        return false;
                    }
                    /*document.getElementById("code_input").onfocus = function(){
                     $("#loginDiv").html("");
                     }*/
                }
            </script>
            <script type="text/javascript">
                $(function () {
                    $("#forgetPass").click(function () {
                        var loginName = window.prompt("请输入您的用户名");
                        if(loginName!=null && loginName!=""){
                            $.get(
                                "${pageContext.request.contextPath}/user/fogetPassword",
                                {"loginName":loginName},
                                function (result) {
                                    alert(result.message);
                                }
                            );
                        }
                    });
                });
            </script>
        </div>
    </div>
</div>
<!--End Login End-->
<!--Begin Footer Begin-->
<div class="btmbg">
    <div class="btm">
        备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com   Copyright © 2015-2018 尤洪商城网 All Rights Reserved. 复制必究 , Technical Support: Dgg Group <br />
        <img src="images/b_1.gif" width="98" height="33" /><img src="${pageContext.request.contextPath}/statics/before_moban/images/b_2.gif" width="98" height="33" /><img src="images/b_3.gif" width="98" height="33" /><img src="${pageContext.request.contextPath}/statics/before_moban/images/b_4.gif" width="98" height="33" /><img src="${pageContext.request.contextPath}/statics/before_moban/images/b_5.gif" width="98" height="33" /><img src="${pageContext.request.contextPath}/statics/before_moban/images/b_6.gif" width="98" height="33" />
    </div>
</div>
<!--End Footer End -->

</body>
