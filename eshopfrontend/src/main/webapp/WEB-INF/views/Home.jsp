<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<body>

<h1>Welcome to the Home Page</h1>

<spring:url var="css" value="/assets/css" />
<spring:url var="images" value="/resources/images" />
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<div class="container text-center"> 
  <h3>Fashionable Trends</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <img src="${images}/S1.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>30% off</p>
      <h3>&#x20B9; 450</h3>
      <h4 class="h">Men's Formal Shirts </h4>
    </div>
    <div class="col-sm-4"> 
      <img src="${images}/S2.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>30% off</p> 
      <h3>&#x20B9; 950</h3> 
      <h4 class="h">Men's Wear T-Shirts </h4>  
    </div>
   <div class="col-sm-4">
      <img src="${images}/S3.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>30% off</p>
      <h3>&#x20B9; 650</h3>
      <h4 class="h"> Men's Casual Trousers </h4>
    </div>
    <div class="col-sm-4"> 
      <img src="${images}/W1.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>20% off</p> 
      <h3>&#x20B9; 1450</h3>   
      <h4 class="h">Women's Accesories</h4>
    </div>
    <br>
    <div class="col-sm-4">
      <img src="${images}/W2.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>20% off</p>
      <h3>&#x20B9; 1650</h3>
      <h4 class="h">Women's Clothes</h4>
    </div>
    <div class="col-sm-4"> 
      <img src="${images}/W3.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>20% off</p> 
      <h3>&#x20B9; 1299</h3>   
      <h4 class="h">Women's Shoes </h4>
    </div>
    <div class="col-sm-4">
      <img src="${images}/E1.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>10% off</p>
      <h3>&#x20B9; 2450</h3>
      <h4 class="h">Electronics Laptops </h4>
    </div>
    <div class="col-sm-4"> 
      <img src="${images}/E2.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>10% off</p>
      <h3>&#x20B9; 1450</h3>    
      <h4 class="h">Mobiles</h4>
    </div>
    <br>
	</div>
	</div>
</body>
</html>