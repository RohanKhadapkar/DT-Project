<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>'
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form action="saveproduct" method="post" modelAttribute="product"
	enctype="multipart/form-data">
	<div class="form-group">
		<form:hidden path="id" class="form-control" />
		<div>
			<div class="form-group">
				Enter Product Name
				<form:input path="productName" class="form-control" />
			</div>
			<br>
			<div class="form-group">
				Enter Price
				<form:input path="price" class="form-control" />
			</div>
			<br>
			<div class="form-group">
				Enter Quantity
				<form:input path="quantity" class="form-control" />
			</div>
			<br>
			<div class="form-group">
				Enter Description
				<form:textarea path="description" class="form-control" />
			</div>
			<br>
			<div class="form-group">
				Select Category
				<form:select path="category.id">
					<c:forEach items="${categories }" var="c">
						<form:option value="${c.id }">${c.categoryName }</form:option>
					</c:forEach>
				</form:select>
			</div>
			<div class="form-group">
				Upload an Image <input type="file" name="image">
			</div>
			<div class="form-group">
				<input type="submit" value="Add Product">
			</div>
		</div>
	</div>
</form:form>
</html>