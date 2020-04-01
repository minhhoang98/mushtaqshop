<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Hello Spring MVC + JDBC</title>
</head>
<body>
	<a href="<c:url value="/nhacungcap-list" />">Danh sach nha cung cap</a>
	<br />
	<h1>Hien thi danh sach nha cung cap:</h1>
	<br /> ID: ${nhacungcap.id}
	<br /> tennhacungcap: ${nhacungcap.tennhacungcap}
	<br /> diachi: ${khachhang.diachi}
	<br />

</body>
</html>