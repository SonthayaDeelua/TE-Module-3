<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="subTitle">Stocks</c:param>
</c:import>

<p>
You purchased <c:out value='${shares}'/>  shares of <c:out value='${ticker}'/> on
<c:out value='${timeStamp}'/>.

</p>

<c:url var='test' value='/redirectTest'/>
<a href='${test}' /> Test </a>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />