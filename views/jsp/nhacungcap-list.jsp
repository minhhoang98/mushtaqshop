<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Hello Spring MVC + JDBC</title>
<style>
table, th, td {
	border: 1px solid black;
}

td {
	padding-right: 30px;
}
</style>
</head>
<body>
	<c:url value="/nhacungcap-save" var="urlSave" />
	<c:url value="/nhacungcap-view/" var="urlView" />
	<c:url value="/nhacungcap-update/" var="urlUpdate" />
	<c:url value="/deleteNhacungcap/" var="urlDelete" />
	<c:url value="/khachhang-list/" var="urlKhachhanglist" />
	<h1>Danh sach nha cung cap:</h1>
	<a href="${urlSave}">Them</a>
	<a href="<c:url value="/khachhang-list"/>">Khach hang</a>
	<br />
	<br />


	<table>
		<tr>
			<th>id</th>
			<th>tennhacungcap</th>
			<th>diachi</th>
		</tr>
		<c:if test="${not empty listNhacungcap}">
			<c:forEach var="nhacungcap" items="${listNhacungcap}">
				<tr style="border: 1px black solid">
					<td>${nhacungcap.id}</td>
					<td>${nhacungcap.tennhacungcap}</td>
					<td>${nhacungcap.diachi}</td>
					<td><button type="button" class="btn btn-primary">
							<a href="${urlUpdate}/${nhacungcap.id}">Update<i
								class="fas fa-pen" style="color: black"></i></a>
						</button></td>
					<td><button type="button" class="btn btn-danger">
							<a href="${urlDelete}/${nhacungcap.id}">Delete<i
								class="fas fa-trash-alt" style="color: black"></i></a>
						</button></td>
				</tr>
			</c:forEach>
		</c:if>
	</table>

</body>
</html>