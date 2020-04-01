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

	<h1>Edit:</h1>
	<c:url value="/updateKhachhang" var="updateKhachhang" />
	<form:form action="${updateKhachhang}" method="POST"
		modelAttribute="khachhang">

		<div class="form-row">
			<div class="form-group col-md-6">
				<label>ID:</label>
				<form:input class="form-control" path="id" />
				<br />
				<label>Họ và Tên:</label>
				<form:input class="form-control" path="tenkhachhang" />
				<br /> <label>Số Điện Thoại</label>
				<form:input class="form-control" path="sdt" />
				<br /> <label>Địa Chỉ</label>
				<form:input class="form-control" path="diachi" />
				<br />
			</div>
			<div class="form-group col-md-6">
				<label>Tên Tài Khoản</label>
				<form:input class="form-control" path="tentaikhoan" />
				<br /> <label>Mật Khẩu</label>
				<form:input class="form-control" path="matkhau" />
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