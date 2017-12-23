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
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>易买网后台管理系统</title>
    <jsp:include page="head.jsp"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/ajaxfileupload.js"></script>
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
                    <a  href="${pageContext.request.contextPath}/after/order.html?pageNum=1&pageSize=5"><i class="fa fa-desktop"></i>订单管理</a>
                </li>
                <li>
                    <a  href="${pageContext.request.contextPath}/after/queryAllProduct?pageNum=1&pageSize=5" class="active-menu"><i class="fa fa-dashboard"></i>商品管理</a>
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
                    <button class="btn btn-info"  name="showaddProduct">上架</button>
                    <h3 align="center" class="bg-success"><strong>商品管理</strong></h3>
                    <table class="table table-hover table-striped" style="margin-top: 10px;">
                        <tr>
                            <td align="center"><strong>商品名称</strong></td>
                            <td align="center"><strong>商品图片</strong></td>
                            <td align="center"><strong>库存</strong></td>
                            <td align="center"><strong>价格</strong></td>
                            <td align="center" colspan="2" width="20%"><strong>操作</strong></td>
                        </tr>
                        <c:forEach items="${pageInfo.list}" var="product">
                            <tr align="center">
                                <td>${product.name}</td>
                                <td><img src="${pageContext.request.contextPath}/statics/upload/${product.fileName}" alt="" height="50px" width="50px"></td>
                                <td>${product.stock}</td>
                                <td>${product.price}</td>
                                <td align="center"><button class="btn btn-info" productID="${product.id}" name="showUpdateProduct">修改</button></td>
                                <td align="center"><button class="btn btn-danger" productID="${product.id}" name="showDeleteProduct" >下架</button></td>
                            </tr>
                        </c:forEach>
                    </table>
                    <%@include file="../page/page_user.jsp"%>
                </div>
            </div>
            <footer><p>版权归 &copy; 2016.所有</p></footer>
        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->

<%--商品修改--%>
<script type="text/javascript">
    $(function () {
        $("button[name=showUpdateProduct]").click(function () {
            var productId=$(this).attr("productID");
            $.get("${pageContext.request.contextPath}/after/queryAllProductById",
                {"productId":productId},function (data) {
                    //var productName=data.product.name;
                    var productL1Id = data.product.categoryLevel1Id;
                    var productL2Id = data.product.categoryLevel2Id;
                    var productL3Id = data.product.categoryLevel3Id;
                    var l1 = data.l1;
                    var l2 = data.l2;
                    var l3 = data.l3;
                    $("#updateProductId").val(data.product.id);
                    $("#productName").val(data.product.name);
                    $("#productPrice").val(data.product.price);
                    $("#productStock").val(data.product.stock);
                    $("#productDescription").val(data.product.description);
                    $("#updateProductSelectL1").empty();
                    $("#updateProductSelectL2").empty();
                    $("#updateProductSelectL3").empty();
                    $.each(l1,function () {
                        //alert(this.name);
                        var l1ID = this.id;
                        var l1Name = this.name;
                        var l2list = l2[l1Name];
                        $("#updateProductSelectL1").append("<option value='"+this.id+"'>"+this.name+"</option>");
                        if(this.id==productL1Id){
                            $("#updateProductSelectL1").val(this.id);
                            $.each(l2list,function () {
                                var l3list = l3[this.name];
                                $("#updateProductSelectL2").append("<option value='"+this.id+"'>"+this.name+"</option>")
                                if(this.id==productL2Id){
                                    $("#updateProductSelectL2").val(this.id);
                                    $.each(l3list,function () {
                                        $("#updateProductSelectL3").append("<option value='" + this.id + "'>" + this.name + "</option>");
                                        if(this.id==productL3Id){
                                            $("#updateProductSelectL3").val(this.id);
                                        }
                                    })
                                }
                            })
                        }
                    });
                })
            $("#updateProduct").modal("show");
        });




        $("#UpdateProductButton").click(function () {
            var student=$("#updateProductForm");
            /*$.post("${pageContext.request.contextPath}/after/updateProduct",
                student,function (data) {
                    alert(data.message);
                    $("#updateStudentModal").modal("hide");
                    location.href = location.href;
                })*/
            var formData = new FormData(student[0]);

            $.ajax({
                url:"${pageContext.request.contextPath}/after/updateProduct",

                data:formData,
                    /*id:$("#updateProductId").val(),
                    name:$("#productName").val(),
                    price:$("#productPrice").val(),
                    stock:$("#productStock").val(),
                    description:$("#productDescription").val(),
                    categoryLevel1Id:$("#updateProductSelectL1").val(),
                    categoryLevel2Id:$("#updateProductSelectL2").val(),
                    categoryLevel2Id:$("#updateProductSelectL2").val(),*/

                //fileElementId:'f_fileName',
                //async : true,
                catch:false,
                contentType:false,
                processData:false,
                type:"post",
                dataType:"JSON",
                success:function (data,status) {
                    alert(data.message);
                    $("#updateStudentModal").modal("hide");
                    location.href = location.href;
                }
            });

        });


        //修改商品分类
        $("#updateProductSelectL1").click(function () {
            vy76
            $.post(
                "${pageContext.request.contextPath}/after/changeProductType",
                {"parentID":parentID},
                function (result) {
                    $("#updateProductSelectL2").empty();
                    $.each(result,function () {
                        $("#updateProductSelectL2").append("<option value='"+this.id+"'>"+this.name+"</option>")
                        var parentID2 = $("#updateProductSelectL2").val();
                        $.post(
                            "${pageContext.request.contextPath}/after/changeProductType",
                            {"parentID":parentID2},
                            function (result) {
                                $("#updateProductSelectL3").empty();
                                $.each(result,function () {
                                    $("#updateProductSelectL3").append("<option value='"+this.id+"'>"+this.name+"</option>")
                                })
                            }
                        );
                    })
                }
            );
        });
        $("#updateProductSelectL2").click(function () {
            var parentID = $(this).val();
            $.post(
                "${pageContext.request.contextPath}/after/changeProductType",
                {"parentID":parentID},
                function (result) {
                    $("#updateProductSelectL3").empty();
                    $.each(result,function () {
                        $("#updateProductSelectL3").append("<option value='"+this.id+"'>"+this.name+"</option>")
                    })
                }
            );
        });
    });
</script>
<%--商品修改模态框--%>
<div class="modal fade" tabindex="-1" role="dialog" id="updateProduct">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">商品修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="updateProductForm" method="post"
                      action="${pageContext.request.contextPath}/product/updateProduct"
                      enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">一级目录</label>
                        <div class="col-sm-9">
                            <select class="form-control" name="categoryLevel1Id" id="updateProductSelectL1">
                                <option>1</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">二级目录</label>
                        <div class="col-sm-9">
                            <select class="form-control" name="categoryLevel2Id" id="updateProductSelectL2">
                                <option>1</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">三级目录</label>
                        <div class="col-sm-9">
                            <select class="form-control" name="categoryLevel3Id" id="updateProductSelectL3">
                                <option>1</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">商品名称</label>
                        <div class="col-sm-9">
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="productName" placeholder="商品名称" name="name" required>
                                <input type="hidden" name="id" id="updateProductId">
                            </div>
                        </div>
                    </div>
                      <div class="form-group">
                          <label class="col-sm-3 control-label">商品图片</label>
                          <div class="col-sm-9">
                              <div class="col-sm-10">
                                <%--  <input type="hidden" id="errorinfo" value="${uploadFileError}">--%>
                                  <input type="file" class="form-control" name="f_fileName" id="f_fileName">
                              </div>
                          </div>
                      </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">单价</label>
                        <div class="col-sm-9">
                            <div class="col-sm-10">
                                <input type="number" min="0" id="productPrice" class="form-control" name="price" required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">库存</label>
                        <div class="col-sm-9">
                            <div class="col-sm-10">
                                <input type="number" min="0" id="productStock" class="form-control" name="stock" required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">描述</label>
                        <div class="col-sm-9">
                            <div class="col-sm-10">
                                <textarea class="form-control" id="productDescription" name="description"></textarea>
                            </div>
                        </div>
                    </div>
                    <%--<input type="submit" value="提交">--%>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" id="UpdateProductButton" class="btn btn-primary">保存</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<script type="text/javascript">
    //删除
    $(function () {
        $("button[name=showDeleteProduct]").click(function (){
            var productID=$(this).attr("productID");
            if (confirm("确定要删除？")) {
                $.post("${pageContext.request.contextPath}/after/deleteProduct", {"id": productID}, function (data) {
                    alert(data.message);
                    location.href = location.href;

                })
            }
        })
    })
</script>
<%--商品添加--%>
<script type="text/javascript">
    $(function () {
        $("button[name=showaddProduct]").click(function () {
            var productId=733;
            $.get("${pageContext.request.contextPath}/after/queryAllProductById",
                {"productId":productId},function (data) {
                    //var productName=data.product.name;
                    var productL1Id = data.product.categoryLevel1Id;
                    var productL2Id = data.product.categoryLevel2Id;
                    var productL3Id = data.product.categoryLevel3Id;
                    var l1 = data.l1;
                    var l2 = data.l2;
                    var l3 = data.l3;
                    $("#addProductSelectL1").empty();
                    $("#addProductSelectL2").empty();
                    $("#addProductSelectL3").empty();
                    $.each(l1,function () {
                        //alert(this.name);
                        var l1ID = this.id;
                        var l1Name = this.name;
                        var l2list = l2[l1Name];
                        $("#addProductSelectL1").append("<option value='"+this.id+"'>"+this.name+"</option>");
                        if(this.id==productL1Id){
                            $("#updateProductSelectL1").val(this.id);
                            $.each(l2list,function () {
                                var l3list = l3[this.name];
                                $("#addProductSelectL2").append("<option value='"+this.id+"'>"+this.name+"</option>")
                                if(this.id==productL2Id){
                                    $("#addProductSelectL2").val(this.id);
                                    $.each(l3list,function () {
                                        $("#addProductSelectL3").append("<option value='" + this.id + "'>" + this.name + "</option>");
                                        if(this.id==productL3Id){
                                            $("#updateProductSelectL3").val(this.id);
                                        }
                                    })
                                }
                            })
                        }
                    });
                })
            $("#addProduct").modal("show");
        });




        $("#addProductButton").click(function () {
            var student=$("#addProductForm");
            var formData = new FormData(student[0]);

            $.ajax({
                url:"${pageContext.request.contextPath}/after/AddProduct",

                data:formData,
                /*id:$("#updateProductId").val(),
                 name:$("#productName").val(),
                 price:$("#productPrice").val(),
                 stock:$("#productStock").val(),
                 description:$("#productDescription").val(),
                 categoryLevel1Id:$("#updateProductSelectL1").val(),
                 categoryLevel2Id:$("#updateProductSelectL2").val(),
                 categoryLevel2Id:$("#updateProductSelectL2").val(),*/

                //fileElementId:'f_fileName',
                //async : true,
                catch:false,
                contentType:false,
                processData:false,
                type:"post",
                dataType:"JSON",
                success:function (data,status) {
                    alert(data.message);
                    $("#addStudentModal").modal("hide");
                    location.href = location.href;
                }
            });

        });


        //修改商品分类
        $("#addProductSelectL1").click(function () {
            var parentID = $(this).val();
            $.post(
                "${pageContext.request.contextPath}/after/changeProductType",
                {"parentID":parentID},
                function (result) {
                    $("#addProductSelectL2").empty();
                    $.each(result,function () {
                        $("#addProductSelectL2").append("<option value='"+this.id+"'>"+this.name+"</option>")
                        var parentID2 = $("#addProductSelectL2").val();
                        $.post(
                            "${pageContext.request.contextPath}/after/changeProductType",
                            {"parentID":parentID2},
                            function (result) {
                                $("#addProductSelectL3").empty();
                                $.each(result,function () {
                                    $("#addProductSelectL3").append("<option value='"+this.id+"'>"+this.name+"</option>")
                                })
                            }
                        );
                    })
                }
            );
        });
        $("#addProductSelectL2").click(function () {
            var parentID = $(this).val();
            $.post(
                "${pageContext.request.contextPath}/after/changeProductType",
                {"parentID":parentID},
                function (result) {
                    $("#addProductSelectL3").empty();
                    $.each(result,function () {
                        $("#addProductSelectL3").append("<option value='"+this.id+"'>"+this.name+"</option>")
                    })
                }
            );
        });
    });
</script>

<%--商品添加模态框--%>
<div class="modal fade" tabindex="-1" role="dialog" id="addProduct">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">商品上架</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="addProductForm" method="post"
                      action="${pageContext.request.contextPath}/product/addProduct"
                      enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">一级目录</label>
                        <div class="col-sm-9">
                            <select class="form-control" name="categoryLevel1Id" id="addProductSelectL1">
                                <option>1</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">二级目录</label>
                        <div class="col-sm-9">
                            <select class="form-control" name="categoryLevel2Id" id="addProductSelectL2">
                                <option>1</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">三级目录</label>
                        <div class="col-sm-9">
                            <select class="form-control" name="categoryLevel3Id" id="addProductSelectL3">
                                <option>1</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">商品名称</label>
                        <div class="col-sm-9">
                            <div class="col-sm-10">
                                <input type="text" class="form-control"  placeholder="商品名称" name="name" required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">商品图片</label>
                        <div class="col-sm-9">
                            <div class="col-sm-10">
                                <%--  <input type="hidden" id="errorinfo" value="${uploadFileError}">--%>
                                <input type="file" class="form-control" name="f_fileName" >
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">单价</label>
                        <div class="col-sm-9">
                            <div class="col-sm-10">
                                <input type="number" min="0"  class="form-control" name="price" required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">库存</label>
                        <div class="col-sm-9">
                            <div class="col-sm-10">
                                <input type="number" min="0"  class="form-control" name="stock" required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">描述</label>
                        <div class="col-sm-9">
                            <div class="col-sm-10">
                                <textarea class="form-control"  name="description"></textarea>
                            </div>
                        </div>
                    </div>
                    <%--<input type="submit" value="提交">--%>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" id="addProductButton" class="btn btn-primary">保存</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->




</body>

</html>