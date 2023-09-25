<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>교육뉴스</title>
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<!-- 세팅 영역 인클루드-->
<jsp:include page="../include/hd.jsp" />
<!-- 세팅 영역 끝 -->

<!-- 뉴스페이지 배너 -->
<div class="container">
<jsp:include page="../include/main_banner.jsp" />
</div>
<!-- 세팅 영역 끝 -->
<!-- 뉴스 영역 시작 -->
<div class="container">
    <article class="media">
        <div class="media-content">
            <div class="container mb-80">
                <c:forEach var="url" items="${urls}" varStatus="status" begin="64" end="72"> <%-- 가져온 url중 64-72번째만 나오게한다--%>
                    <br>
                    <div class="columns">
                        <div>
                            <a href="${url}" target="_blank"><span><img src="${img[status.index]}" style="margin-right: 50px;"></span></a>
                        </div>
                        <div class="column">
                            <a href="${url}" target="_blank">   <strong style="color: black;font-size: 30px;font-weight: bold; display: block">${titles[status.index]}</strong></a>
                            <small>${regdates[status.index]}</small>
                        </div>
                    </div>
                    <br>
                    <p class="mb-30" style="margin-top:10px">
                        <a href="${url}" target="_blank">
                            </a>
                            ${contents[status.index]}..<a href="${url}" style="color: black">더보기</a>
                        <hr>
                    </p>
                </c:forEach>
            </div>
        </div>
    </article>
</div>
<!-- 뉴스 영역 끝-->

<!-- 푸터 영영 시작 -->
<jsp:include page="../include/ft.jsp"/>
<!-- 푸터 영역 끝 -->

</body>
</html>