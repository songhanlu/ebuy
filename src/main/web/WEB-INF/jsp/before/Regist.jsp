<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/statics/before_moban/css/style.css" />
    <!--[if IE 6]>
    <script src="${pageContext.request.contextPath}/statics/before_moban/js/iepng.js" type="text/javascript"></script>
        <script type="text/javascript">
           EvPNG.fix('div, ul, img, li, input, a'); 
        </script>
    <![endif]-->    
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

    <script type="text/javascript">
        function checkName(){
            var loginName = $("#loginName").val();
            var loginNameDiv = $("#loginNameDiv");
            if(loginName==""){
                loginNameDiv.css("color","red");
                loginNameDiv.html("*用户名不能为空");

            }else{

            $.ajax({
                url:"${pageContext.request.contextPath}/user/deExists",
                type:"GET",
                data:{"loginName":loginName},
                dataType:"text",
                success:function(data){
                    if(data=="success"){
                        loginNameDiv.css("color","red");
                        loginNameDiv.html("*用户名已存在");

                    }else{
                        loginNameDiv.css("color","green");
                        loginNameDiv.html("√用户名可以使用");
                    }
                }
            });
            }
        }
        function checkPassowrd() {
            var password = $("#password").val();
            var passwordDiv = $("#passwordDiv");
            var confirmPassword = $("#confirmPassword").val();
            var confirmPasswordDiv = $("#confirmPasswordDiv");
            if(password==""){
                passwordDiv.css("color", "red");
                passwordDiv.html("*密码不能为空");
                return false;
            }
            passwordDiv.css("color", "green");
            passwordDiv.html("*密码正确");
            if (confirmPassword==""){
                confirmPasswordDiv.css("color", "red");
                confirmPasswordDiv.html("*密码不能为空");
                return false;
            }
            if (password!=confirmPassword){
                confirmPasswordDiv.css("color", "red");
                confirmPasswordDiv.html("*两次输入密码不一致");
                return false;
            }
            confirmPasswordDiv.css("color", "green");
            confirmPasswordDiv.html("*密码正确");

        }
        /*function checkConfirmPassowrd() {
            var confirmPassword = $("#confirmPassword").val();
            var confirmPasswordDiv = $("#confirmPasswordDiv");
            if(password==""){
                passwordDiv.css("color", "red");
                passwordDiv.html("*密码不能为空");
                return false;
            }
            passwordDiv.css("color", "green");
            passwordDiv.html("*密码正确");
        }*/
        function checkUserName() {
            var userName = $("#userName").val();
            var userNameDiv = $("#userNameDiv");
            if(userName==""){
                userNameDiv.css("color", "red");
                userNameDiv.html("*姓名不能为空");
                return false;
            }
            userNameDiv.css("color", "green");
            userNameDiv.html("*姓名输入正确");
        }
        function checkIdentityCode() {
            var identityCode = $("#identityCode").val();
            var identityCodeDiv = $("#identityCodeDiv");
           var reg = /^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;
            if(reg.test(identityCode)==false||identityCode==""){
                identityCodeDiv.css("color", "red");
                identityCodeDiv.html("*格式不正确");
                return false;
            }
            identityCodeDiv.css("color", "green");
            identityCodeDiv.html("格式正确");
            return true;
        }
        function checkEmail() {
            var email = $("#email").val();
            var emailDiv = $("#emailDiv");
            var reg =  /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
            if(reg.test(email)==false||email==""){
                emailDiv.css("color","red");
                emailDiv.html("*格式不正确");
                return false;
            }
            emailDiv.css("color","green");
            emailDiv.html("*格式正确");
            return true;

        }
        function checkMobile() {
            var mobile = $("#mobile").val();
            var mobileDiv = $("#mobileDiv");
            var reg = /^1[3|4|5|8][0-9]\d{4,8}$/;
            if(reg.test(mobile)==false||mobile==""){
                mobileDiv.css("color","red");
                mobileDiv.html("*格式不正确");
                return false;
            }
            mobileDiv.css("color","green");
            mobileDiv.html("格式正确");
            return false;

        }


    </script>
    
<title>注册页面</title>
</head>
<body>  
<!--Begin Header Begin-->
<div class="soubg">
	<div class="sou">
        <span class="fr">
            <span class="fl">|&nbsp;关注我们：</span>
            <span class="s_sh"><a href="#" class="sh1">新浪</a><a href="#" class="sh2">微信</a></span>
            <span class="fr">|&nbsp;<a href="#">手机版&nbsp;<img src="${pageContext.request.contextPath}/statics/before_moban/images/s_tel.png" align="absmiddle" /></a></span>
        </span>
    </div>
</div>
<!--End Header End--> 
<!--Begin Login Begin-->
<div class="log_bg">	
    <div class="top">
        <div class="logo"><a href="${pageContext.request.contextPath}/index/shl"><img src="${pageContext.request.contextPath}/statics/before_moban/images/logo.png" /></a></div>
    </div>
	<div class="regist">
    	<div class="log_img"><img src="${pageContext.request.contextPath}/statics/before_moban/images/l_img.png" width="611" height="425" /></div>
		<div class="reg_c">
        	<form action="${pageContext.request.contextPath}/user/beforeRegister" method="post">
            <table border="0" style="width:420px; height:+100px; font-size:14px; margin-top:20px;" cellspacing="0" cellpadding="0" >
              <tr height="50" valign="top">
              	<td width="95">&nbsp;</td>
                <td>
                	<span class="fl" style="font-size:24px;">注册</span>
                    <span class="fr">已有商城账号，<a href="${pageContext.request.contextPath}/login.html" style="color:#ff4e00;">我要登录</a></span>
                </td>
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;用户登录名 &nbsp;</td>
                <td>
                    <input type="text" name="loginName" id="loginName" class="l_user"  onblur="checkName()"/>
                    <div id="loginNameDiv"></div>
                </td>
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;密码 &nbsp;</td>
                <td>
                    <input type="password" name="password" id="password" class="l_pwd" onblur="checkPassowrd()" />
                    <div id="passwordDiv"></div>
                </td>
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;确认密码 &nbsp;</td>
                <td>
                    <input type="password" id="confirmPassword" class="l_pwd" onblur="checkPassowrd()"/>
                    <div id="confirmPasswordDiv"></div>
                </td>
              </tr>
              <tr height="80">
                  <td align="right"><font color="#ff4e00">*</font>&nbsp;真实姓名 &nbsp;</td>
                  <td>
                      <input type="text" name="userName" id="userName" class="l_user" onblur="checkUserName()"/>
                      <div id="userNameDiv"></div>
                  </td>
              </tr>
              <tr height="50">
                  <td align="right"><font color="#ff4e00">*</font>&nbsp;性别&nbsp;</td>
                  <td>
                      <input type="radio" name="sex" value="男" checked />男
                      <input type="radio" name="sex" value="女" />女
                  </td>
              </tr>
              <tr height="50">
                  <td align="right"><font color="#ff4e00">*</font>&nbsp;身份证号 &nbsp;</td>
                  <td>
                      <input type="text" name="identityCode" id="identityCode" class="l_user" onblur="checkIdentityCode()" />
                      <div id="identityCodeDiv"></div>
                  </td>
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;邮箱 &nbsp;</td>
                <td>
                    <input type="text" name="email" id="email" class="l_email" onblur="checkEmail()" />
                    <div id="emailDiv"></div>
                </td>
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;手机 &nbsp;</td>
                <td>
                    <input type="text" name="mobile" id="mobile" class="l_tel" onblur="checkMobile()" />
                    <div id="mobileDiv"></div>
                </td>
              </tr>
              <%--<tr height="50">
                <td align="right"> <font color="#ff4e00">*</font>&nbsp;验证码 &nbsp;</td>
                <td>
                    <input type="text" value="" class="l_ipt" />
                    <a href="#" style="font-size:12px; font-family:'宋体';">换一张</a>
                </td>
              </tr>--%>
              <%--<tr>
              	<td>&nbsp;</td>
                <td style="font-size:12px; padding-top:20px;">
                	<span style="font-family:'宋体';" class="fl">
                    	<label class="r_rad"><input type="checkbox" /></label><label class="r_txt">我已阅读并接受《用户协议》</label>
                    </span>
                </td>
              </tr>--%>
              <tr height="60">
              	<td>&nbsp;</td>
                <td><input type="submit" value="立即注册" class="log_btn" /></td>
              </tr>
            </table>
            </form>
        </div>
    </div>
</div>
<!--End Login End--> 
<!--Begin Footer Begin-->
<div class="btmbg">
    <div class="btm">
        备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com   Copyright © 2015-2018 尤洪商城网 All Rights Reserved. 复制必究 , Technical Support: Dgg Group <br />
        <img src="${pageContext.request.contextPath}/statics/before_moban/images/b_1.gif" width="98" height="33" /><img src="${pageContext.request.contextPath}/statics/before_moban/images/b_2.gif" width="98" height="33" /><img src="${pageContext.request.contextPath}/statics/before_moban/images/b_3.gif" width="98" height="33" /><img src="${pageContext.request.contextPath}/statics/before_moban/images/b_4.gif" width="98" height="33" /><img src="${pageContext.request.contextPath}/statics/before_moban/images/b_5.gif" width="98" height="33" /><img src="${pageContext.request.contextPath}/statics/before_moban/images/b_6.gif" width="98" height="33" />
    </div>    	
</div>
<!--End Footer End -->    

</body>


<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>
