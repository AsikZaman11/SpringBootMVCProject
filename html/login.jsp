<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
        <div class="row justify-content-center">
            <div style="background-color:green;" class="col-md-5 shadow">
            <h3>User Loging</h3>
                <h4 style="color:red;"></h4>
                <form action="" method=post >
<input type="text" class="form-label" name="userName" placeholder="Name"/><br>
<input type="text" class="form-label" name="userEmail" placeholder="password"/><br>
<button class="btn btn-primary mb-3">submit</button>
</form>
            </div>
            <div class="col-md-5 shadow" style="background-color:yellow;">
                <h3>Admin Loging</h3>
                <h4 style="color:red;">${errorMsg}</h4>
                <form action="" method=post >
<input type="text" class="form-label" name="userName" placeholder="Name"/><br>
<input type="text" class="form-label" name="userEmail" placeholder="password"/><br>
<button class="btn btn-primary mb-3">submit</button>
</form>
            </div>
        </div>
    </div>
</body>
</html>