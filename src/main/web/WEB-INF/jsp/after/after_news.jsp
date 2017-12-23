<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>易买网后台管理系统</title>
    <jsp:include page="head.jsp"/>
</head>

<body>
<script type="text/javascript">
    $(function () {
        $("button[name=newsDetailsButton]").click(function () {
            var newsId = $(this).attr("newsId");
            $.get("${pageContext.request.contextPath}/news/queryNews",{"newsId":newsId},
                function (data) {
                    $("#titleDiv").html(data.title);
                    $("#detailsDiv").html(data.content);
                });
            $("#newsDetailsModal").modal("show");
        })

    })
</script>
<script type="text/javascript">
    $(function () {
        //修改前查询
        $("button[name=updateNewsButton]").click(function () {
            var newsId = $(this).attr("newsId");
            $.get("${pageContext.request.contextPath}/news/queryNews",{"newsId":newsId},function (data) {
                $("#updateTitle").html(data.title);
                $("#updateContent").html(data.content);
                $("#updateId").val(newsId);
            })
            $("#updateNewsModal").modal("show");
        })
        //修改
        $("#saveUpdateNewsButton").click(function () {
            var news=$("#updateNewsForm").serialize();
            $.post("${pageContext.request.contextPath}/news/updateNews",news,function (data) {
                alert(data.message);
                $("#updateNewsModal").modal("hide");
                location.href=location.href;
            });
        })
        //删除
        $("button[name=deleteNewsButton]").click(function () {
            var visible = $(this).attr("visible");
            if(confirm("确定要删除？")){
                $.post("${pageContext.request.contextPath}/news/updateNewsByVisible",{"visible":visible},function (data) {
                    alert(data.message);
                    location.href=location.href;
                });
            }
        })
    });
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
                    <a href="${pageContext.request.contextPath}/after/user.html?pageNum=1&pageSize=5"><i class="fa fa-desktop"></i>用户管理</a>
                </li>
                <li>
                    <a  href="${pageContext.request.contextPath}/after/order.html?pageNum=1&pageSize=5"><i class="fa fa-desktop"></i>订单管理</a>
                </li>
                <li>
                    <a  href="${pageContext.request.contextPath}/after/queryAllProduct?pageNum=1&pageSize=5"><i class="fa fa-desktop"></i>商品管理</a>
                </li>
                <li>
                    <a  href="${pageContext.request.contextPath}/news/toNewsList?pageNum=1&pageSize=5" class="active-menu"><i class="fa fa-dashboard"></i>资讯管理</a>
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
                    <h3 align="center" class="bg-success"><strong>资讯管理</strong></h3>
                    <table class="table table-hover table table-bordered" align="center" style="margin-top: 10px;>
                        <tr align="center">
                            <td width="30%">标题</td>
                            <td>创建时间</td>
                            <td>详情</td>
                        </tr>
                        <c:forEach items="${pageInfo.list}" var="news">
                            <tr align="center">
                                <td align="left">${news.title}</td>
                                <td>
                                    <fmt:formatDate value="${news.createTime}" pattern="yyyy-MM-dd"/>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-info" name="newsDetailsButton" newsId="${news.id}">详情</button>
                                    <button class="btn btn-info" name="updateNewsButton" newsId="${news.id}">修改</button>
                                    <button class="btn btn-danger" name="deleteNewsButton" visible="${news.id}">删除</button>
                                </td>
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


<%--详情模态框--%>
<div class="modal fade" tabindex="-1" role="dialog" id="newsDetailsModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">资讯明细</h4>
            </div>
            <div class="modal-body">
                <table class="table table-bordered">
                    <tr>

                        <td>
                            <div id="titleDiv"></div>
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <textarea readonly class="form-control" rows="3" name="details" id="detailsDiv"></textarea>
                        </td>
                    </tr>

                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<!--新增-->
<div class="modal fade" tabindex="-1" role="dialog" id="addNewsModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <form id="addNewsForm">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">新闻标题</label>
                        <input type="text" class="form-control" placeholder="新闻标题" name="title">
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-3 control-label">新闻内容：</label>
                        <div class="col-sm-9">
                            <textarea class="form-control" rows="3" name="content" placeholder="新闻内容"></textarea>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="saveAddNewsButton">保存</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!--修改-->
<div class="modal fade" tabindex="-1" role="dialog" id="updateNewsModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <form id="updateNewsForm">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">新闻标题</label>
                        <%--<input type="text" class="form-control"  name="title" id="updateTitle">
                        <input type="hidden" id="updateId" name="id">--%>
                        <div class="col-sm-9">
                            <textarea class="form-control" rows="1" name="title" id="updateTitle"></textarea>
                            <input type="hidden" name="id" id="updateId">
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-3 control-label">新闻内容：</label>
                        <div class="col-sm-9">
                            <textarea class="form-control" rows="3" name="content" id="updateContent"></textarea>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="saveUpdateNewsButton">保存</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


</body>

</html>