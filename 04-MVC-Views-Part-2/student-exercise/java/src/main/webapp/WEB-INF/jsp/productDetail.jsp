<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="pageTitle" value="Product Details" />
</c:import>

<!-- Container for the Product -->
<!-- The current product is available using the `product` variable -->
<div id="product-detail">

	<img src="<c:url value="/images/product-images/${product.imageName}" />" />
	
	<div class="product-description">
		<h3>${product.name}</h3>

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
		</div>

		<!-- Include this if the product has a Remaining Stock of 5 or less -->
		<p class="alert-remaining">BUY NOW! <c:out value="Only${product.remainingStock}Left!" /></p>
		<p class="description"><c:out value="${product.description}" /></p>
		<p class="price"><c:out value="$${product.price}" /></p>

		<!-- If item is in stock -->
		<button class="action"><a href "#">ADD TO CART</a></button>
		<!-- OR if item is out of stock -->
		<!--<button disabled>Sold Out</button>-->
	</div>
</div>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />