<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Hello Spring MVC + JDBC</title>
</head>
<body>
	<a href="<c:url value="/nhacungcap-list" />">Danh sach nha cung cap</a>
	<br />

	<h1>Edit:</h1>
	<c:url value="/updateNhacungcap" var="updateNhacungcap" />
	<form:form action="${updateNhacungcap}" method="POST"
		modelAttribute="nhacungcap">

		<div class="form-row">
			<div class="form-group col-md-6">
				<label>ID:</label>
				<form:input class="form-control" path="id" />
				<br />
				<label>Tên Nhà Cung Cấp:</label>
				<form:input class="form-control" path="tennhacungcap" />
				<br /> <label>Địa Chỉ:</label>
				<form:input class="form-control" path="diachi" />
				<br />
			</div>
		</div>
		<form:button type="submit" class="btn btn-success">
			<i class="far fa-save"></i>Save</form:button>
		<form:button id="editbutton" type="submit" class="btn btn-danger">
			<a href="<c:url value="/khachhang-list" />"><i
				class="far fa-arrow-alt-circle-left"></i>Return</a>
		</form:button>
	</form:form>

</body>
</html>