<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Hello Spring MVC + JDBC</title>
</head>
<body>
	<a href="<c:url value="/khachhang-list" />">Danh sach khach hang</a>
	<br />
	<h1>Hien thi khach hang:</h1>
	<br /> ID: ${khachhang.id}
	<br /> tenkhachhang: ${khachhang.tenkhachhang}
	<br /> sdt: ${khachhang.sdt}
	<br /> diachi: ${khachhang.diachi}
	<br /> tentaikhoan: ${khachhang.tentaikhoan}
	<br /> matkhau: ${khachhang.matkhau}
	<br />

</body>
</html>