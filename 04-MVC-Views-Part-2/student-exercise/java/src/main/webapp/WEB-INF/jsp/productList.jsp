<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="pageTitle" value="Product List View" />
</c:import>

<div id="card-page">
	<c:import url="/WEB-INF/jsp/common/filters.jsp">
		<%-- Modify the baseRoute to apply filters to the current route. --%>
		<c:param name="baseRoute" value="/products" />
	</c:import>

	<div class="main-content">
		<!-- Container for Sorting Choices
         
         Each link should take the user to this current page and use any combination of the following
         querystring parameters to sort the page:
            - sortOrder (string) - PriceLowToHigh,PriceHighToLow,RatingHighToLow
    	-->
		<div id="sorting-options">
			<h3>Sort By</h3>
			<ul>
							
				<c:url var='lowToHighUrl' value='/products'>
					<c:param name='sortOrder' value='PriceLowToHigh' />		
				</c:url>
				
				<c:url var='highToLowUrl' value='/products'>
					<c:param name='sortOrder' value='PricehighToLow' />		
				</c:url>
				
				<c:url var='ratingHighToLowUrl' value='/products'>
					<c:param name='sortOrder' value='RatingHighToLow' />		
				</c:url>
				

				<li><a href="${lowToHighUrl}">Price - Low to High</a></li>
				<li><a href="${highToLowUrl}">Price - High to Low</a></li>
				<li><a href="${ratingHighToLowUrl}">Rating - High to Low</a></li>
			</ul>
		</div>
		


		<div id="grid">

			<!-- 
        The following HTML shows different examples of what HTML could be rendered based on different rules. 
        For purposes of demonstration we've written it out so you can see it when you load the page up. 
        -->

			<c:forEach var="product" items="${products}">
			
				<!-- Standard Product -->
				<c:choose>
					<c:when test="${product.remainingStock == 0}">
					<div class="tile sold-out">
					<span class="banner">Sold Out</span>	
					</c:when>
					
					<c:otherwise>
					<div class="tile">
					</c:otherwise>			
				</c:choose>
				
				
					<c:if
						test="${product.topSeller == 'true' && product.remainingStock > 0}">
						<span class="banner top-seller">Top Seller!</span>
					</c:if>
					
					
					<c:url var="productPhoto"
						value="/images/product-images/${product.imageName}">
					</c:url>

					<c:url var="detail" value="products/detail?id=${product.id}" />

					<a class="product-image" href="${detail}"> <img
						src="${productPhoto}" />
					</a>


					<div class="details ">

						<p class="name">${product.name}</p>


						<!-- .filled will make the star solid -->
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
							

							<c:if
								test="${product.remainingStock <=5 && product.remainingStock > 0}">

								<span class="alert-remaining product-alert"> <c:out
										value="ONLY${product.remainingStock}LEFT!" /></span>
							</c:if>

						<p class="price">$${product.price}</p>

					</div>
					
				</div>	
			</div>
	</c:forEach>
</div>


		<c:import url="/WEB-INF/jsp/common/footer.jsp" />