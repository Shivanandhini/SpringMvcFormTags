<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ResultPage</title>
</head>
<body>
    
   Name :${userregisterdto.name}<br/>
   UserName :${userregisterdto.userName}<br/>
   Password :${userregisterdto.password}<br/>
   Country  :${userregisterdto.country}<br/>
   Hobbies :
  <c:forEach var="temp" items="${userregisterdto.hobbies}">  
      ${temp}
   </c:forEach>
   <br/>
   Gender :${userregisterdto.gender}
</body>
</html>