<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2017/12/18
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>ebuy后台管理系统</title>
    <link href="${pageContext.request.contextPath}/statics/login/Wopop_files/style_log.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/login/Wopop_files/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/login/Wopop_files/userpanel.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/login/Wopop_files/jquery.ui.all.css">

</head>

<body class="login" mycollectionplug="bind">
<div class="login_m">
    <div class="login_logo"><h2><strong style="color:#69aeef;">eBuy后台管理系统</strong></h2></div>
    <div class="login_boder">

        <div class="login_padding" id="login_model">
            <form action="${pageContext.request.contextPath}/afterUser/login" method="post">
                <h2>用户名</h2>
                <label>
                    <input type="text" id="userName" name="loginName" class="txt_input txt_input2" value="" placeholder="用户名">
                </label>
                <h2>密码</h2>
                <label>
                    <input type="password" name="password" id="password" class="txt_input" value="" placeholder="密码">
                </label>
                <div class="rem_sub">

                    <label>
                        <input type="submit" class="sub_button" name="button" id="button" value="管理员登录" style="opacity: 0.7;">
                    </label>
                </div>
            </form>
        </div>
        <!--login_padding  Sign up end-->
    </div><!--login_boder end-->
</div><!--login_m end-->
<br> <br>
</body>
</html>
