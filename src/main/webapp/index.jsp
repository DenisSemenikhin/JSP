<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset='utf-8'>
		<title>Servlet</title>
		<style>
            <%@include file="/WEB-INF/css/style.css"%>
        </style>
	</head>
	<body>
        <h1> ${login}, please read currency information</h1>
        <table>
            <tr>
                <th>Name</th>
                <th>Currency Code</th>
                <th>Numeric Code</th>
                <th>Symbol</th>
            </tr>
            <c:forEach items="${currency}" var="item">
            <tr class="even">
                <td class="la"><c:out value="${item.getDisplayName()}"></c:out></td>
                <td class="la"><c:out value="${item.getCurrencyCode()}"></c:out></td>
                <td class="la"><c:out value="${item.getNumericCode()}"></c:out></td>
                <td class="la"><c:out value="${item.getSymbol()}"></c:out></td>
            </tr>
            </c:forEach>
        </table>
	</body>
</html>