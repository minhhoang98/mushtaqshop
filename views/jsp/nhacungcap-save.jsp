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
	<a href="<c:url value="/nhacungcap-list" />">Danh sach nha cung cap</a>
	<br />

	<h1>Add:</h1>
	<c:url value="/saveNhacungcap" var="saveNhacungcap" />
	<form:form action="${saveNhacungcap}" method="POST"
		modelAttribute="nhacungcap">
		<div class="form-row">
			<div class="form-group col-md-6">
				<label>Tên Nhà Cung Cấp:</label>
				<form:input class="form-control" path="tennhacungcap"
					placeholder="Type Here" required="required" pattern="[a-z]\{20}"
					title="Please type Full Name" />
				<br /> <label>Address:</label>
				<form:input class="form-control" path="diachi"
					placeholder="Type Here" required="required" pattern="[a-z]\{100}"
					title="Please Address" />
				<br />
			</div>
		</div>
		<form:button type="submit" class="btn btn-success">
			<i class="far fa-save"></i>Save</form:button>
		<form:button id="editbutton" type="submit" class="btn btn-danger">
			<a href="<c:url value="/nhacungcap-list" />"><i
				class="far fa-arrow-alt-circle-left"></i>Return</a>
		</form:button>
	</form:form>

</body>
</html>