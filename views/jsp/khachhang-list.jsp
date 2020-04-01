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
	<c:url value="/khachhang-save" var="urlSave" />
	<c:url value="/khachhang-view/" var="urlView" />
	<c:url value="/khachhang-update/" var="urlUpdate" />
	<c:url value="/deleteKhachhang/" var="urlDelete" />
	<c:url value="/nhacungcap-list/" var="urlNhacungcaplist" />
	<h1>Danh sach khach hang:</h1>
	<a href="${urlSave}">Them</a>
	<a href="<c:url value="/nhacungcap-list"/>">Nha cung cap</a>
	<br />
	<br />


	<table>
		<tr>
			<th>id</th>
			<th>tenkhachhang</th>
			<th>sdt</th>
			<th>diachi</th>
			<th>tentaikhoan</th>
			<th>matkhau</th>
		</tr>
		<c:if test="${not empty listKhachhang}">
			<c:forEach var="khachhang" items="${listKhachhang}">
				<tr style="border: 1px black solid">
					<td>${khachhang.id}</td>
					<td>${khachhang.tenkhachhang}</td>
					<td>${khachhang.sdt}</td>
					<td>${khachhang.diachi}</td>
					<td>${khachhang.tentaikhoan}</td>
					<td>${khachhang.matkhau}</td>
					<td><a href="${urlView}/${khachhang.id}">View</a></td>
					<td><button type="button" class="btn btn-primary">
							<a href="${urlUpdate}/${khachhang.id}">Update<i
								class="fas fa-pen" style="color: black"></i></a>
						</button></td>
					<td><button type="button" class="btn btn-danger">
							<a href="${urlDelete}/${khachhang.id}">Delete<i
								class="fas fa-trash-alt" style="color: black"></i></a>
						</button></td>
				</tr>
			</c:forEach>
		</c:if>
	</table>

</body>
</html>