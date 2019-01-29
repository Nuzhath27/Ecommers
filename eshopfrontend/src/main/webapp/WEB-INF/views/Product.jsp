<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<br/><br/>

<form:form action="InsertProduct" modelAttribute="product" method="post">
<table align="center" class="table-bordered">
     <tr>
        <td colspan="2"><center>Product Information</center></td>
     </tr>
     <tr>
         <td>Product Name</td>
         <td><form:input path="proName"/></td>
      </tr>
      <tr>
          <td>Price</td>
          <td><form:input path="proprice"/></td>
       </tr>
       <tr>
          <td>Stock</td>
          <td><form:input path="stock"/></td>
       </tr>
       <tr>
           <td>Category</td>
           <td> 
              <form:select path="categoryID">
                   <form:option value="0" label="---Select from the List---"/>
                   <form:options items="${categoryList}"/>
              </form:select>
            </td>
         </tr>
         <tr>
             <td>Supplier</td>
             <td><form:input path="supplierId"/></td>
          </tr>
          <tr>
              <td>Product Desc</td>
              <td><form:input path="proDesc"/></td>
           </tr>
           <tr>
              <td colspan="2"><center><input type="submit" value="InsertProduct"/></center></td>
           </tr>
        </table>
        </form:form>
        
        
        <table align="center" class="table-bordered">
        <tr>
           <td>Product ID</td>
           <td>Product Name</td>
           <td>Price</td>
           <td>Stock</td>
           <td>Supplier</td>
           <td>Operations</td>
         </tr>
         <c:forEach items="${productList}" var="product">
         <tr>
            <td>${product.proId}</td>
            <td>${product.proName}</td>
            <td>${product.proprice}</td>
            <td>${product.stock}</td>
            <td>${product.supplierId}</td>
            <td>
                  <a href="<c:url value="/editProduct/${product.proId}"/>"class="btn btn-success">Edit</a>/
                  <a href="<c:url value="/deleteProduct/${product.proId}"/>"class="btn btn-danger">Delete</a>
            </td>   
          </tr>
          </c:forEach>
          </table>
          </body>
          </html>