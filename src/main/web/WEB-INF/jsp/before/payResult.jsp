<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2017/12/26
  Time: 8:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>支付结果</title>
</head>
<body>
    <h2 align="center">${payMessage}</h2>
    <h2 align="center">订单号：${r6_Order}</h2>
    <script type="text/javascript">
        window.setTimeout(function () {
            window.location.href = "${pageContext.request.contextPath}/index/shl";
        },3000)
    </script>
</body>
</html>
