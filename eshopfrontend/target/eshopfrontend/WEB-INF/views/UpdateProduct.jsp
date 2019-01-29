<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<br/><br/>

<form:form action="UpdateProduct" modelAttribute="product" method="post">
<table align="center" class="table-bordered"> 
    <tr>
       <td colspan="2"><center>Update Product</center></td>
     </tr>
     <tr>
       <td> Product ID </td>
       <td><form:input path="proId"/></td>
    </tr>
    <tr>
              <td>Product Desc</td>
              <td><form:input path="proDesc"/></td>
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
              <td colspan="2"><center><input type="submit" value="Update Product" class="btn btn-success"/></center></td>
           </tr>
        </table>
        </form:form>
        </body>
        </html>