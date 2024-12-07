<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login fail</title>
</head>
<body>
<c:out value="${msg}"></c:out><br/>
<a href="adminLogin">Try again</a>

</body>
</html>