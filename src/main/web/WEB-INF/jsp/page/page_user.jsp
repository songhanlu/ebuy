<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            location.href = location.href.split("?")[0]+"?pageNum="+pageNum+"&pageSize=5";
        });
    });
</script>
