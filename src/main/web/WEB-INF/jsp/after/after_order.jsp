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
    <meta charset="utf-8" />
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
                    <a href="${pageContext.request.contextPath}/after/user.html?pageNum=1&pageSize=5"><i class="fa fa-desktop"></i>用户管理</a>
                </li>
                <li>
                    <a  href="${pageContext.request.contextPath}/after/order.html?pageNum=1&pageSize=5" class="active-menu"><i class="fa fa-dashboard"></i>订单管理</a>
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
                    <h3 align="center" class="bg-success"><strong>订单管理</strong></h3>
                    <table class="table table-hover table-striped" style="margin-top: 10px;">
                        <form action="${pageContext.request.contextPath}/afterOrder/queryOrderByLoginNameOrSerialNumber">
                            <tr>
                                <div class="col-lg-4">
                                    <div class="input-group">
                                        条件查询
                                        <input type="text" class="form-control" name="loginName" value="${loginName}" placeholder="Search for...">
                                        <input type="text" class="form-control" value="${serialNumber}" name="serialNumber">
                                        <input type="hidden" name="pageNum" value="1">
                                        <input type="hidden" name="pageSize" value="5">
                                        <span class="input-group-btn">
                                 <input class="btn btn-default" type="submit">Go!</input>
                                </span>
                                    </div><!-- /input-group -->
                                </div><!-- /.col-lg-6 -->


                            </tr>
                        <c:forEach items="${pageInfo.list}" var="order">
                            <tr style="color: #1d72e9">
                                <td colspan="3">
                                    <strong>用户名：${order.loginName}</strong>
                                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;订单号：${order.serialNumBer}</strong>
                                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;地址：${order.userAddress}</strong>
                                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;￥${order.cost}</strong>
                                </td>
                                <td>
                                    <button class="btn btn-danger" orderID="${order.id}" name="delOrder">删除</button>
                                </td>
                            </tr>
                            <tr style="color: #1d72e9">
                                <td>商品名称</td>
                                <td>商品图片</td>
                                <td>数量</td>
                                <td>单价</td>
                            </tr>
                            <c:forEach items="${order.orderDetail}" var="od">
                                <tr>
                                    <td>${od.product.name}</td>
                                    <td><img src="${pageContext.request.contextPath}/statics/upload/${od.product.fileName}" width="75" height="75"></td>
                                    <td>${od.quantity}</td>
                                    <td>${od.product.price}</td>
                                    <%--<td align="center"><button class="btn btn-info">修改</button></td>
                                    <td align="center"><button class="btn btn-danger">删除</button></td>--%>
                                </tr>
                            </c:forEach>

                        </c:forEach>
                        </form>
                    </table>

                    <%--<jsp:include page="../page/page_user.jsp"/>--%>
                    <%--分页--%>
                    <nav aria-label="Page navigation" class="col-lg-offset-4 col-lg-6">
                        <ul class="pagination">
                            <c:choose>
                                <c:when test="${pageInfo.isFirstPage}">
                                    <li class="disabled"><span href="#" class="disabled">首页</span></li>
                                    <li class="disabled">
                    <span aria-label="Previous" >
                        <span aria-hidden="true">&laquo;</span>
                    </span>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li><a href="#" pageNum="1">首页</a></li>
                                    <li>
                                        <a href="#" aria-label="Previous" pageNum="${pageInfo.prePage}">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                </c:otherwise>
                            </c:choose>

                            <c:forEach items="${pageInfo.navigatepageNums}" var="num">
                                <li <c:if test="${num eq pageInfo.pageNum}">class="active"</c:if>>
                                    <a href="#" pageNum="${num}">${num}</a>
                                </li>
                            </c:forEach>



                            <c:choose>
                                <c:when test="${pageInfo.isLastPage}">
                                    <li class="disabled">
                    <span aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </span>
                                    </li>
                                    <li class="disabled"><span>末页</span></li>
                                </c:when>
                                <c:otherwise>
                                    <li>
                                        <a href="#" aria-label="Next" pageNum="${pageInfo.nextPage}">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                    <li><a href="#" pageNum="${pageInfo.pages}">末页</a></li>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </nav>
                    <script type="text/javascript">
                        $(function () {
                            $("ul[class=pagination] li a").click(function () {
                                var pageNum = $(this).attr("pageNum");
                                location.href = location.href.split("?")[0]+"?pageNum="+pageNum+"&pageSize=5&loginName=${loginName}&serialNumber=${serialNumber}";
                            });
                        });
                    </script>
                </div>
            </div>
            <footer><p>版权归 &copy; 2016.所有</p></footer>
        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->

<%--删除订单--%>
<script type="text/javascript">
    $(function () {
        $("button[name=delOrder]").click(function () {
            var orderID = $(this).attr("orderID");
            if(confirm("确定删除？")){
                $.get(
                    "${pageContext.request.contextPath}/afterOrder/delOrder",
                    {"id":orderID},
                    function (result) {
                        alert(result.message);
                        location.href = location.href;
                    }
                );
            }
        });
        $("#delOrderButton").click(function () {
            /*if(confirm("确定删除？")){
                var id = $("#delOrderForm *[name=id]").val();
                $.get(
                    "${pageContext.request.contextPath}/afterOrder/delOrder",
                    {"id":id},
                    function (result) {
                        alert(result.message);
                        location.href = location.href;
                    }
                );
            }*/
        });
    });
</script>
删除订单模态框
<div class="modal fade" tabindex="-1" role="dialog" id="delOrderModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
        <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <h4 class="modal-title">删除订单</h4>
        </div>
        <div class="modal-body">
        <form action="" id="delOrderForm">
            确认删除该订单吗？
            <input type="hidden" name="id"/>
        </form>
        </div>
        <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal" id="delOrderButton">确认</button>
        </div>
      </div><!-- /.modal-content -->
   </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</body>

</html>