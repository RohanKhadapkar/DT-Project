<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container wrapper">
	<div class="container">
		<c:url value="/all/savecustomer" var="url"></c:url>
		<form:form action="${url }" modelAttribute="customer">
			<div class="boxed" style="border: 1px solid">
				<div class="form-group">
					<form:label path="firstname">Enter First Name</form:label>
					<form:input path="firstname" class="form-control" placeholder="Enter First Name" pattern="^[a-zA-Z]+$"/>
					<form:errors path="firstname" cssStyle="color:red"></form:errors>
				</div>

				<div class="form-group">
					<form:label path="lastname">Enter Last Name</form:label>
					<form:input path="lastname" class="form-control" placeholder="Enter Last Name" pattern="^[a-zA-Z]+$"/>
					<form:errors path="lastname" cssStyle="color:red"></form:errors>
				</div>

				<div class="form-group">
					<form:label path="email">Enter Email</form:label>
					<form:input path="email" class="form-control"
						placeholder="Enter Email"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" />
					<form:errors path="email" cssStyle="color:red"></form:errors>
					<p style="color: red">${duplicateEmail }</p>
				</div>

				<div class="form-group">
					<form:label path="phone">Enter Mobile Number</form:label>
					<form:input path="phone" class="form-control"
						placeholder="Enter Mobile Number" pattern="[789]\d{9}" />
					<form:errors path="phone" cssStyle="color:red"></form:errors>
				</div>
			</div>


			<div class="boxed" style="border: 1px solid">
				<div class="form-group">
					<form:label path="user.username">Enter User Name</form:label>
					<form:input path="user.username" class="form-control" placeholder="Enter Username"/>
					<form:errors path="user.username" cssStyle="color:red"></form:errors>
					<p style="color: red">${duplicateUsername }</p>
				</div>

				<div class="form-group">
					<form:label path="user.password">Enter Password</form:label>
					<form:input path="user.password" type="password"
						class="form-control" placeholder="Enter Password"/>
					<form:errors path="user.password" cssStyle="color:red"></form:errors>
				</div>
			</div>

			<div class="boxed" style="border: 1px solid">
			<h3><b>Billing Address</b></h3><br>
				<div class="form-group">
					<form:label path="billingAddress.streetname">Enter Street Name</form:label>
					<form:input path="billingAddress.streetname" class="form-control" placeholder="Enter Street Name"/>
					<form:errors path="billingAddress.streetname" cssStyle="color:red"></form:errors>
				</div>

				<div class="form-group">
					<form:label path="billingAddress.apartmentnumber">Enter Apartment Number</form:label>
					<form:input path="billingAddress.apartmentnumber"
						class="form-control" placeholder="Enter Apartment Number"/>
					<form:errors path="billingAddress.apartmentnumber"
						cssStyle="color:red"></form:errors>
				</div>

				<div class="form-group">
					<form:label path="billingAddress.city">Enter City</form:label>
					<form:input path="billingAddress.city" class="form-control" placeholder="Enter City" pattern="^[a-zA-Z]+$"/>
					<form:errors path="billingAddress.city" cssStyle="color:red"></form:errors>
				</div>

				<div class="form-group">
					<form:label path="billingAddress.state">Enter State</form:label>
					<form:input path="billingAddress.state" class="form-control" placeholder="Enter State" pattern="^[a-zA-Z]+$"/>
					<form:errors path="billingAddress.state" cssStyle="color:red"></form:errors>
				</div>

				<div class="form-group">
					<form:label path="billingAddress.country">Enter Country</form:label>
					<form:input path="billingAddress.country" class="form-control" placeholder="Enter Country" pattern="^[a-zA-Z]+$"/>
					<form:errors path="billingAddress.country" cssStyle="color:red"></form:errors>
				</div>

				<div class="form-group">
					<form:label path="billingAddress.zipcode">Enter Zip Code</form:label>
					<form:input path="billingAddress.zipcode" class="form-control" placeholder="Enter Zip Code" pattern="^[0-9]+$"/>
					<form:errors path="billingAddress.zipcode" cssStyle="color:red"></form:errors>
				</div>
			</div>
			<div class="boxed" style="border: 1px solid">
			<h3><b>Shipping Address</b></h3><br>
				<div class="form-group">
					<form:label path="shippingAddress.streetname">Enter Street Name</form:label>
					<form:input path="shippingAddress.streetname" class="form-control" placeholder="Enter Street Name"/>
					<form:errors path="shippingAddress.streetname" cssStyle="color:red"></form:errors>
				</div>

				<div class="form-group">
					<form:label path="shippingAddress.apartmentnumber">Enter Apartment Number</form:label>
					<form:input path="shippingAddress.apartmentnumber"
						class="form-control" placeholder="Enter Apartment Number"/>
					<form:errors path="shippingAddress.apartmentnumber"
						cssStyle="color:red"></form:errors>
				</div>

				<div class="form-group">
					<form:label path="shippingAddress.city">Enter City</form:label>
					<form:input path="shippingAddress.city" class="form-control" placeholder="Enter City" pattern="^[a-zA-Z]+$"/>
					<form:errors path="shippingAddress.city" cssStyle="color:red"></form:errors>
				</div>

				<div class="form-group">
					<form:label path="shippingAddress.state">Enter State</form:label>
					<form:input path="shippingAddress.state" class="form-control" placeholder="Enter State" pattern="^[a-zA-Z]+$"/>
					<form:errors path="shippingAddress.state" cssStyle="color:red"></form:errors>
				</div>

				<div class="form-group">
					<form:label path="shippingAddress.country">Enter Country</form:label>
					<form:input path="shippingAddress.country" class="form-control" placeholder="Enter Country" pattern="^[a-zA-Z]+$"/>
					<form:errors path="shippingAddress.country" cssStyle="color:red"></form:errors>
				</div>

				<div class="form-group">
					<form:label path="shippingAddress.zipcode">Enter Zip Code</form:label>
					<form:input path="shippingAddress.zipcode" class="form-control" placeholder="Enter Zip Code" pattern="^[0-9]+$"/>
					<form:errors path="shippingAddress.zipcode" cssStyle="color:red"></form:errors>
				</div>
				<div class="form-group">
				<input type="submit" value="Register">
				</div></div>
				</form:form>
				</div>
				</div>
</body>
</html>