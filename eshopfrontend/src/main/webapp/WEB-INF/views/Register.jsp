<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>



<style type="text/css">
@import url(http://fonts.googleapis.com/css?family=Roboto:400);
body {
  background-color:#fff;
  -webkit-font-smoothing: antialiased;
  font: normal 14px Roboto,arial,sans-serif;
}

.container {
    padding: 25px;
    position: fixed;
}

.form-login {
    background-color: #EDEDED;
    padding-top: 10px;
    padding-bottom: 20px;
    padding-left: 20px;
    padding-right: 20px;
    border-radius: 15px;
    border-color:#d2d2d2;
    border-width: 5px;
    box-shadow:0 1px 0 #cfcfcf;
}

h4 { 
 border:0 solid #fff; 
 border-bottom-width:1px;
 padding-bottom:10px;
 text-align: center;
}
</style>


<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js">
</script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container">
<form:form action="addUser" modelAttribute="user" method="post">
<div class="row">
<div class="col-md-offset-5 col-md-3">
<div class="form-login">
<h4>Enter your Details to Register</h4>
<input type="text" name="customerName" id="customerName"class="form-control input-sm chat-input" placeholder="Your name" />
</br>
<input type="text" name="username" id="username"  class="form-control input-sm chat-input" placeholder="username" />
</br>
<input type="text" name="customerAddr" id="customerAddr" class="form-control input-sm chat-input" placeholder="address" />
</br>
<input type="password" name="password" id="password" class="form-control input-sm chat-input" placeholder="password" />
</br>
<div class="wrapper">
<span class="group-btn">     
 <center> <input type="submit" value="Register" class="btn btn-primary btn-md"/></center>

</span>
</div>
</div>
</div>
</div>
</form:form>
</div>
