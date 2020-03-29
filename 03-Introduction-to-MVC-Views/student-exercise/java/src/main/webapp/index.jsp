<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="common/header.jsp">
	<c:param name="title" value="Home"></c:param>
</c:import>

<c:set var="var1" value="a" />
<c:set var="var2" value="79" />
<c:set var="var3" value="10" />

${var1}
${var2}
${var3}
${var2 + var3}

<c:set var="var3" value="10" />

<c:forEach var="i" begin="1" end="${var3}">
    <c:out value="${i}" /> 
</c:forEach>

<c:set var = "scale" value="F"/>
<c:if test = "${scale == 'F'}" >
	<p>Human body temperature is 98.6</p>
</c:if>

<c:set var = "scale" value="O"/>
<c:choose>

	<c:when test="${scale == 'F'}" >
		<p>Human body temperature is 98.6 F.</p>
	</c:when>
	
	<c:when test="${scale == 'C'}" >
		<p>Human body temperature is 37.0 C.</p>
	</c:when>
	
	<c:when test="${scale == 'K'}" >
		<p>Human body temperature is 310.15 K.</p>
	</c:when>
	
	<c:otherwise>
		<p>Bad Scale</p>
	</c:otherwise>
</c:choose>




<c:import url="common/footer.jsp"></c:import>