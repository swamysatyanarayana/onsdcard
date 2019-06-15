<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images"/>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Shopping - ${title }</title>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="${css}/myApp.css" rel="stylesheet">

</head>

<body>
<!-- 		navigation  -->
	<%@include file="./shared/navbar.jsp" %>
	
<!-- 	Page Content -->
<!-- 	Loading the home content -->
	<c:if test="${userClickHome == true }">
		<%@include file="./home.jsp" %>
	</c:if>

	<!-- 	Load only user click about -->
	<c:if test="${userClickAbout == true }">
		<%@include file="./about.jsp" %>
	</c:if>
	
	<!-- 	Load only user click contact -->
	<c:if test="${userClickContact == true }">
		<%@include file="./contact.jsp" %>
	</c:if>
	
	
	<!-- 	Footer come here -->
	<%@include file="./shared/footer.jsp" %>
	
    
    <!-- JavaScript -->
    <script src="${js}/jquery-3.4.1.min.js"></script>
    <script src="${js}/bootstrap.js"></script>

</body>

</html>
