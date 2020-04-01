<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<html>
<head>
<title>Hello Spring MVC + JDBC</title>
</head>
<body>
	<a href="<c:url value="/khachhang-list" />">Danh sach khach hang</a>
	<br />

	<h1>Add:</h1>
	<c:url value="/saveKhachhang" var="saveKhachhang" />
	<form:form id="KhachhangSave" action="${saveKhachhang}" method="POST"
		modelAttribute="khachhang" onsubmit="return validateForm()">
		<div class="form-row">
			<div class="form-group col-md-6">
				<label>Full Name:</label>
				<form:input class="form-control" path="tenkhachhang"
					placeholder="Type Here" required="required" pattern="[a-z]\{20}"
					title="Please type Full Name" />
				<br /> <label>Phone Number</label>
				<form:input class="form-control" path="sdt" placeholder="Type Here"
					required="required" pattern="[0-9]{10,11}"
					title="Please type Phone Number" />
				<br /> <label>Address:</label>
				<form:input class="form-control" path="diachi"
					placeholder="Type Here" required="required" pattern="[a-z]\{100}"
					title="Please Address" />
				<br />
			</div>
			<div class="form-group col-md-6">
				<label>Username</label>
				<form:input class="form-control" path="tentaikhoan"
					placeholder="Type Here" required="required" pattern="[a-z]\{100}"
					title="Please type Account" />
				<br /> <label>Password:</label>
				<form:input class="form-control" path="matkhau"
					placeholder="Type Here" required="required"
					pattern="^[a-zA-Z0-9_!#$%&’*+/=?`{|}~^.-]{8,16}"
					title="Please type Password" />
			</div>
		</div>
		<form:button type="submit" class="btn btn-success">
			<i class="far fa-save"></i>Save</form:button>
		<form:button id="editbutton" type="submit" class="btn btn-danger">
			<a href="<c:url value="/khachhang-list" />"><i
				class="far fa-arrow-alt-circle-left"></i>Return</a>
		</form:button>
		</div>
	</form:form>

</body>
</html>