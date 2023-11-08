<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!-- 세션에 유저객체 존재여부에 따라 바뀌는 설정 -->
<c:set var="loginId" value="${empty sessionScope.user ? '' : sessionScope.user.id}"/>
<c:set var="loginOutText" value="${empty loginId ? 'Login' : 'LogOut' }"/>
<c:set var="loginOutLink" value="${empty loginId ? '/login/getLogin' : '/login/logout'  }"/>
<%-- <%@ page session="false" %> --%>
<html>
<head>
	<title>메인 페이지</title>
	    <link rel="stylesheet" href="<c:url value='/css/main.css'/>">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>    		
</head>
<body>

<div id="main">
	<ul>
	    <li id="logo">shop main</li>
	    <li><a href="<c:url value='/'/>">Home</a></li>
	    <li><a href="<c:url value='${loginOutLink}'/>">${loginOutText}</a></li>    
	    <li><a href="<c:url value='/register/getRegister'/>">register</a></li>
	</ul> 
</div>
</body>
</html>
