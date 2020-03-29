<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Container for Filter Choices
        Each link should take the user to this current page and use any combination of the following
        querystring parameters to filter the page:
        - maxPrice (number)
        - minPrice (number)
        - minRating (number)
        - category (string) - Home, Apparel, Jewelry, Garden

        NOTE: A parameter is passed to this view that is called `baseRoute`. `baseRoute`
        refers to the page that the filters should be associated with. For instance, if you are on the products
        page, the value of the `baseRoute` should be the route for products and on the tiles page, should be the
        route for tiles.
        -->

<div id="filter-options">
	<h3>Refine By</h3>
	
	
	
	<c:url value='${baseRoute}' var='midPrice'>
		<c:param name= 'minPrice' value='25'/>
		<c:param name= 'maxPrice' value='50'/>	
	</c:url>
	
	<c:url value='${baseRoute}' var='lowPrice'>
		<c:param name= 'maxPrice' value='24'/>	
	</c:url>
	
	<c:url value='${baseRoute}' var='highPrice'>
		<c:param name= 'minPrice' value='50'/>
	</c:url>
	
	
		
	<ul>
		
		<li><a href="${lowPrice}">Under $25</a></li>
		<li><a href="${midPrice}">$25 to $50</a></li>
		<li><a href="${highPrice}">$50 &amp; Above</a></li>

	</ul>
	
	<p>Avg. Review</p>
	
	
	<c:url value='${baseRoute}' var='rated4Stars'>
		<c:param name='minRating' value='4'/>	
	</c:url>
	
	<c:url value='${baseRoute}' var='rated3Stars'>
		<c:param name='minRating' value='3'/>	
	</c:url>
	
	<c:url value='${baseRoute}' var='rated2Stars'>
		<c:param name='minRating' value='2'/>	
	</c:url>
	
	<c:url value='${baseRoute}' var='rated1Stars'>
		<c:param name='minRating' value='1'/>	
	</c:url>
	
	<ul>
	
		<li>
			<a class="rating" href="${rated4Stars}">
				<span class="filled">&#9734;</span>
				<span class="filled">&#9734;</span>
				<span class="filled">&#9734;</span>
				<span class="filled">&#9734;</span>
				<span>&#9734;</span> &amp; Up
			</a>
		</li>
		<li>
			<a class="rating" href="${rated3Stars}">
				<span class="filled">&#9734;</span>
				<span class="filled">&#9734;</span>
				<span class="filled">&#9734;</span>
				<span>&#9734;</span>
				<span>&#9734;</span> &amp; Up
			</a>
		</li>
		<li>
			<a class="rating" href="${rated2Stars}">
				<span class="filled">&#9734;</span>
				<span class="filled">&#9734;</span>
				<span class="filled">&#9734;</span>
				<span>&#9734;</span>
				<span>&#9734;</span> &amp; Up
			</a>
		</li>
		<li>
			<a class="rating" href="${rated1Stars}">
				<span class="filled">&#9734;</span>
				<span>&#9734;</span>
				<span>&#9734;</span>
				<span>&#9734;</span>
				<span>&#9734;</span> &amp; Up
			</a>
		</li>
	</ul>
	
	
	<p>Category</p>
	
	
	<c:url value='${baseRoute}' var='home'>
		<c:param name='category' value='Home'/>	
	</c:url>
	
	<c:url value='${baseRoute}' var='apparel'>
		<c:param name='category' value='Apparel'/>	
	</c:url>
	
	<c:url value='${baseRoute}' var='jewelry'>
		<c:param name='category' value='Jewelry'/>	
	</c:url>
	
	<c:url value='${baseRoute}' var='garden'>
		<c:param name='category' value='Garden'/>	
	</c:url>
	
	
	
	<ul>
		<li><a href="${home}">Home</a></li>
		<li><a href="${apparel}">Apparel</a></li>
		<li><a href="${jewelry}">Jewelry</a></li>
		<li><a href="${garden}">Garden</a></li>
	</ul>
</div>


 
