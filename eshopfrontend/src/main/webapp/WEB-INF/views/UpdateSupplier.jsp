<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form action="<c:url value="/UpdateSupplier"/>" method="post">
<table align="center" class="table">
   <tr>
    <td colspan="2">
        <center><h3>Supplier</h3></center>
    </td>
    <tr>
      <td> Supplier ID </td>
      <td><input type="text" name="sId" value="${supplier.supplierId}" readonly/></td>
     </tr>
    <tr>
      <td> Supplier Name </td>
      <td><input type="text" name="sName" value="${supplier.supplierName}"/></td>
     </tr>
     <tr>
       <td> Supplier Description </td>
      <td><input type="text" name="sDesc" value="${supplier.supplierDesc}"/></td>
     </tr>
     <tr>
       <td colspan="2">
          <center><input type="submit" value="Update Supplier"/></center>
       </td>
      </tr>
</table>
</form>