<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="pageTitle" value="Product Tile View" />
</c:import>

<div id="masonry-page">
	<c:import url="/WEB-INF/jsp/common/filters.jsp">
		<%-- Modify the baseRoute to apply filters to the current route. --%>
		<c:param name="baseRoute" value="/products/tiles" />


	</c:import>

	<!-- Container for all of the Products -->
	<!-- The list of products is available using the `products` variable -->
	<div id="grid" class="main-content">

		<!-- The following HTML shows different examples of what HTML
		 could be rendered based on different rules. For purposes
		 of demonstration we've written it out so you can see it
		 when you load the page up. -->
		<c:forEach var="product" items="${products}">



			<c:choose>
				<c:when test="${product.remainingStock == 0}">
					<div class="tile sold-out">
						<span class="banner">Sold Out</span>
				</c:when>

				<c:when test="${product.topSeller == 'true'}">
					<div class="tile top-seller">
				</c:when>


				<c:otherwise>
					<div class="tile">
				</c:otherwise>
			</c:choose>



			<c:url var="photoLink"
				value="/images/product-images/${product.imageName}"></c:url>
			<c:url var="linkToDetail" value="/products/detail?id=${product.id}"></c:url>

			<a class="${topSeller} top-seller product-image"
				href="${linkToDetail}"><img src="${photoLink}" /></a>
				
				

			<div class="details">
				<p class="name">${product.name}</p>
			</div>
			

			<div class="rating">

				<c:choose>
					<c:when test="${product.averageRating < 2}">
						<span class="filled">&#9734;</span>
						<span>&#9734;</span>
						<span>&#9734;</span>
						<span>&#9734;</span>
						<span>&#9734;</span>
					</c:when>

					<c:when
						test="${product.averageRating >= 2 && product.averageRating < 3}">
						<span class="filled">&#9734;</span>
						<span class="filled">&#9734;</span>
						<span>&#9734;</span>
						<span>&#9734;</span>
						<span>&#9734;</span>
					</c:when>

					<c:when
						test="${product.averageRating >= 3 && product.averageRating < 4}">
						<span class="filled">&#9734;</span>
						<span class="filled">&#9734;</span>
						<span class="filled">&#9734;</span>
						<span>&#9734;</span>
						<span>&#9734;</span>
					</c:when>

					<c:when
						test="${product.averageRating >= 4 && product.averageRating < 5}">
						<span class="filled">&#9734;</span>
						<span class="filled">&#9734;</span>
						<span class="filled">&#9734;</span>
						<span class="filled">&#9734;</span>
						<span>&#9734;</span>
					</c:when>

					<c:when test="${product.averageRating == 5}">
						<span class="filled">&#9734;</span>
						<span class="filled">&#9734;</span>
						<span class="filled">&#9734;</span>
						<span class="filled">&#9734;</span>
						<span class="filled">&#9734;</span>
					</c:when>

				</c:choose>
				
				<br>

				<c:if
					test="${product.remainingStock <=5 && product.remainingStock > 0}">

					<span class="alert-remaining product-alert"> <c:out
							value="${product.remainingStock}REMAINING!" /></span>
				</c:if>
				&nbsp;
				<c:if
					test="${product.topSeller == 'true' && product.remainingStock > 0}">
					<span class="banner top-seller">TOP SELLER!</span>
				</c:if>

				<br>
				
				<p class="price">$${product.price}</p>



				</div>
			</div>

		</c:forEach>
	</div>
</div>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />

