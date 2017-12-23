<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2017/12/18
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>易买网后台管理系统</title>
    <jsp:include page="head.jsp"/>
</head>

<body>
<script type="text/javascript">

</script>
<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/index/shl"><strong>返回ebuy主页</strong></a>


        </div>

        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-messages">
                    <li>
                        <a href="#">
                            <div>
                                <strong>John Doe</strong>
                                <span class="pull-right text-muted">
                                        <em>Today</em>
                                    </span>
                            </div>
                            <div>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>John Smith</strong>
                                <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                            </div>
                            <div>Lorem Ipsum has been the industry's standard dummy text ever since an kwilnw...</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>John Smith</strong>
                                <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                            </div>
                            <div>Lorem Ipsum has been the industry's standard dummy text ever since the...</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>Read All Messages</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-messages -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-tasks">
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 1</strong>
                                    <span class="pull-right text-muted">60% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                        <span class="sr-only">60% Complete (success)</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 2</strong>
                                    <span class="pull-right text-muted">28% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100" style="width: 28%">
                                        <span class="sr-only">28% Complete</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 3</strong>
                                    <span class="pull-right text-muted">60% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                        <span class="sr-only">60% Complete (warning)</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 4</strong>
                                    <span class="pull-right text-muted">85% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                                        <span class="sr-only">85% Complete (danger)</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>See All Tasks</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-tasks -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> New Comment
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                <span class="pull-right text-muted small">12 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-envelope fa-fw"></i> Message Sent
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-tasks fa-fw"></i> New Task
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>See All Alerts</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-alerts -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="#"><i class="fa fa-sign-out fa-fw"></i>注销</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
    </nav>
    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li>
                    <a  href="${pageContext.request.contextPath}/after/index.html"><i class="fa fa-desktop"></i>首页</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/after/user.html?pageNum=1&pageSize=5" class="active-menu"><i class="fa fa-dashboard"></i>用户管理</a>
                </li>
                <li>
                    <a  href="${pageContext.request.contextPath}/after/order.html?pageNum=1&pageSize=5"><i class="fa fa-desktop"></i>订单管理</a>
                </li>
                <li>
                    <a  href="${pageContext.request.contextPath}/after/queryAllProduct?pageNum=1&pageSize=5"><i class="fa fa-desktop"></i>商品管理</a>
                </li>
                <li>
                    <a  href="${pageContext.request.contextPath}/news/toNewsList?pageNum=1&pageSize=5"><i class="fa fa-desktop"></i>资讯管理</a>
                </li>
                <li>
                    <a  href="${pageContext.request.contextPath}/pc/toPcList"><i class="fa fa-desktop"></i>商品分类管理</a>
                </li>

                <%--<li>
                    <a href="#"><i class="fa fa-sitemap"></i>商品管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${pageContext.request.contextPath}/after/test.html">测试页面</a>
                        </li>
                        <li>
                            <a href="">Morris Chart</a>
                        </li>
                    </ul>
                </li>--%>
            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->

    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">
                易买网后台管理系统<small>欢迎你，${sessionScope.cur_user.userName}</small>
            </h1>
            <%--<ol class="breadcrumb">
                <li>当前时间：</li>
            </ol>--%>

        </div>
        <div id="page-inner">

            <div class="row">
                <div>
                    <h3 align="center" class="bg-success"><strong>用户管理</strong></h3>
                    <table class="table table-hover table-striped" style="margin-top: 10px;">
                        <tr>
                            <td width="20%"><strong>用户名称</strong></td>
                            <td><strong>真实姓名</strong></td>
                            <td><strong>性别</strong></td>
                            <td><strong>类型</strong></td>
                            <td align="center" colspan="2" width="20%"><strong>操作</strong></td>
                        </tr>
                        <c:forEach items="${pageInfo.list}" var="user">
                            <tr>
                                <td>${user.loginName}</td>
                                <td>${user.userName}</td>
                                <td>${user.sex}</td>
                                <td>
                                    <c:if test="${user.type eq 1}">管理员</c:if>
                                    <c:if test="${user.type eq 0}">普通用户</c:if>
                                </td>
                                <td align="center"><button class="btn btn-info" userID="${user.id}" name="showUpdateUser">修改</button></td>
                                <td align="center"><button class="btn btn-danger" userID="${user.id}" name="delUser">删除</button></td>
                            </tr>
                        </c:forEach>

                    </table>
                    <jsp:include page="../page/page_user.jsp"/>
                </div>
            </div>
            <footer><p>版权归 &copy; 2016.所有</p></footer>
        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->


<%--删除js--%>
<script type="text/javascript">
    $(function () {
        $("button[name=delUser]").click(function () {
            var userID = $(this).attr("userID");
            //alert(userID);
            $("#delUserForm *[name=id]").val(userID);
            $("#delUser").modal("show");
        });
        $("#delUserButton").click(function () {
            var id = $("#delUserForm *[name=id]").val();
            $.get(
                "${pageContext.request.contextPath}/afterUser/delUser",
                {"id":id},
                function (result) {
                    alert(result.message);
                    location.href = location.href;
                }
            );
        });
    });
</script>
<%--修改js--%>
<script type="text/javascript">
    $(function () {
        $("button[name=showUpdateUser]").click(function () {
            var id = $(this).attr("userID");
            $.get(
                "${pageContext.request.contextPath}/afterUser/findUserByID",
                {"id":id},
                function (result) {
                    $("#updateUserForm *[name=loginName]").val(result.loginName);
                    $("#updateUserForm *[name=userName]").val(result.userName);
                    $("#updateUserForm *[name=sex]").val(result.sex);
                    $("#updateUserForm *[name=id]").val(result.id);
                    $("#updateUserForm *[name=password]").val(result.password);
                    $("#updateUserForm *[name=mobile]").val(result.mobile);
                    $("#updateUserForm *[name=email]").val(result.email);
                    $("#updateUserForm *[name=identityCode]").val(result.identityCode);
                    $("#updateUserSelect").val(result.type);
                }
            );
            $("#updateUser").modal("show");
        });
        $("#updateUserButton").click(function () {
            var user = $("#updateUserForm").serialize();
            $.post(
                "${pageContext.request.contextPath}/afterUser/updateUser",
                user,
                function (result) {
                    alert(result.message);
                    location.href = location.href;
                }
            );
        });
    });
</script>
<%--用户删除模态框--%>
<div class="modal fade" tabindex="-1" role="dialog" id="delUser">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">商品修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="delUserForm">
                    确定删除该用户吗？
                    <input type="hidden" name="id"/>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="delUserButton">确认</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<%--用户修改模态框--%>
<div class="modal fade" tabindex="-1" role="dialog" id="updateUser">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">商品修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="updateUserForm">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">登录名</label>
                        <div class="col-sm-9">
                            <div class="col-sm-9">
                                <input type="text" class="form-control" placeholder="登录名" name="loginName" required>
                                <input type="hidden" name="id">
                                <input type="hidden" name="sex">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">真实姓名</label>
                        <div class="col-sm-9">
                            <div class="col-sm-9">
                                <input type="text" class="form-control" placeholder="真实姓名" name="userName" required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">密码</label>
                        <div class="col-sm-9">
                            <div class="col-sm-9">
                                <input type="password" class="form-control" name="password" required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">身份证号</label>
                        <div class="col-sm-9">
                            <div class="col-sm-9">
                                <input type="text" class="form-control" placeholder="身份证号" name="identityCode" required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">电子邮箱</label>
                        <div class="col-sm-9">
                            <div class="col-sm-9">
                                <input type="text" class="form-control" placeholder="电子邮箱" name="email" required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">手机号</label>
                        <div class="col-sm-9">
                            <div class="col-sm-9">
                                <input type="text" class="form-control" placeholder="手机号" name="mobile" required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">用户身份</label>
                        <div class="col-sm-9">
                            <select class="form-control" name="type" id="updateUserSelect">
                                <option value="1">管理员</option>
                                <option value="0">普通用户</option>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="updateUserButton">保存</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</body>

</html>