<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Product productDetails = new Product();
	ArrayList allProduct = productDetails.getAllProduct(Integer.parseInt(request.getParameter("type_id")));
	Type catDetails = new Type();
	ArrayList allType = catDetails.getAllType();
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <!-- ################################################################################################ -->
      <div class="group btmspace-30"> 
        <!-- Left Column -->
        <div class="one_quarter first"> 
          <!-- ################################################################################################ -->
          <ul class="nospace">
            <li class="btmspace-15"><a href="#"><em class="heading">CHOOSE YOUR CATEGORY</em> 
			<ul>
			<li><a href="list-product.jsp?type_id=0">All Foods</a></li>
			<% for(int i=0;i<allType.size();i++) 
			{ 
				HashMap TypeDetails = new HashMap();
				TypeDetails = (HashMap)allType.get(i);
			%>
				<li><a href="list-product.jsp?type_id=<% out.print(TypeDetails.get("type_id")); %>"><% out.print(TypeDetails.get("type_name")); %></a></li>
			<%
			}
			%>
			</ul>
		</li>
		</li>
          </ul>
          <!-- ################################################################################################ --> 
        </div>
        <!-- / Left Column --> 
        <!-- Middle Column -->
        <div class="one_half" style="width:70%"> 
          <!-- ################################################################################################ -->
          <h2>Meal Ordering System</h2>
          <ul class="nospace listing">
          <% for(int i=0;i<allProduct.size();i++) 
			{ 
				HashMap ProductDetails = new HashMap();
				ProductDetails = (HashMap)allProduct.get(i);
			%>
				<li class="product-listing">
					<div class="myimage">
					<a href="product-details.jsp?product_id=<% out.print(ProductDetails.get("product_id")); %>">
						<img src="productImages/<% out.print(ProductDetails.get("product_image")); %>" style="height:120px; width:120px;">
					</a>
					</div>
					<div class="product-price">
						<b style="text-decoration:underline"><% out.print(ProductDetails.get("product_name")); %></b> <br>
						&#8377; <% out.print(ProductDetails.get("product_price")); %>
					</div>
				</li>
			<%
			}
			%>
          </ul>
          
       <!-- ################################################################################################ --> 
        </div>
        <!-- / Middle Column --> 
      </div>
      
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      
      <!-- ################################################################################################ --> 
      <!-- / main body -->
      <div class="clear"></div>
    </main>
  </div>
</div>

<%@ include file="includes/footer.jsp" %>
