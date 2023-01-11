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
<div class="container container-fluid mb-2" style="background-color:blueviolet;border-radius: 10px;">
    <nav  class="navbar navbar-expand-lg navbar-light bg-transparent">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">HOME</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Courses
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="dropdown-item" href="#">Action</a></li>
                      <li><a class="dropdown-item" href="#">Another action</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                  </li>
                  
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">About</a>
              </li>
          </div>
          <form class="d-flex">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-secondary" type="submit">Search</button>
            </form>
          <button type="button" class="btn btn-outline-light" data-bs-toggle="modal" data-bs-target="#exampleModal">
            Sing Up
          </button>
          <form action="/login">
	<input type="submit" class="btn btn-outline-light"  value="log"/>
	</form>
          
        </div>
      </nav>
  </div>
<div class="container container-fluid">
    <div class="row mb-3">
    <form action="/courseparsesform">
	<input type="submit" class="btn btn-dark"  value="Coure Parses From"/>
	</form>
        <div class="col-md-5">
            <h1> Generated Cupon offer </h1>
            <h4>If u have no cupon type cupon0</h4>
            <form   action = "/cuponbbbbbbbb" >
 
                <div class="mb-3">
              <label for="num1" class="form-label">Token No:</label>
              <input type="text"  class="form-control" id="num1" name="num1" >
              <div>
            </div>
            </div>
            <button type="submit" class="btn btn-primary">Generate Cupon</button>
            <h1> Parses offer </h1>
            <h4>Type at least 1</h4>
            <div class="mb-3">
              <label for="num2" class="form-label">Course Parses Quantity</label>
              <input type="text"  class="form-control" id="num2" name="num2" >
              <div>
            </div>
            </div>
            <button type="submit" class="btn btn-primary">Generate Offer</button>
           
          </form>
          
        </div>
        <div  class="col-md-5">
           
           
 
          <h3 class="shadow text-danger">${cupon}</h3>
          <h3 class="shadow text-success"> ${tk} </h3> 
          <h3 class="shadow text-success"> ${tk1} </h3> 
          <h2 class="shadow"> ${t} </h2> 
          <h2 class="shadow" style="color:purple"> ${tk2} </h2> 
            
            
            
           
          
           
        </div>
        
    </div>
    
   </div> 
</body>
</html>