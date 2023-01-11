<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EDCARE</title>
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
    <nav  class="navbar navbar-expand-lg navbar-light bg-transparent" >
        <div class="container-fluid" >
          <a class="navbar-brand" style="color:orange;" href="/home">EDCARE</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       
                <li class="nav-item">
                  <a class="nav-link active" style="color:white;"  aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" style="color:white;"  href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
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
                <a style="color:white;" class="nav-link active" aria-current="page" href="#">About</a>
              </li>
              </ul>
          </div>
          <form class="d-flex">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-secondary" type="submit">Search</button>
            </form>
          <button type="button" class="btn btn-outline-light" data-bs-toggle="modal" data-bs-target="#exampleModal">
            Sing Up
          </button>
          <form action="/login">
	<input type="submit" class="btn btn-outline-light"  value="login"/>
	</form>
          
        </div>
      </nav>
  </div>
    
   <!-- Button trigger modal -->

  
  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Sing Up</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
           <form action="/home" method="post">

		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Name : </label> <input
				class="form-control" name="name">

		</div>
		<div class="mb-3">
			<label class="form-label">Mobile No : </label> <input
				class="form-control" name="mobile">
		</div>
		

		<button type="submit" class="btn btn-primary">Save</button>
	</form>
        </div>
        <div class="modal-footer">
         
      </div>
    </div>
  </div> 
  </div>
<div class="container container-fluid " >
    <div class="text-center" style="background-color:rgb(184, 8, 137); font-size: large;border-radius: 25px;">
        <h3 style="color:white; border-radius: 25px;">Enlighten Your Skill</h3>
    </div>
    <div class="row mb-3 justify-content-center">
        <div class="card shadow m-2" style="width: 19rem;background-color:orange;">
            <img src="https://cdn.elearningindustry.com/wp-content/uploads/2015/05/Online-Learning-Teaching-Techniques-800x800.jpg"class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title" style="color:white;">BANGLA</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
               <form action="/coursedetails">
	<input type="submit" class="btn btn-success"  value="Coure Details"/>
	</form>
            </div>
          </div>
          <div class="card shadow m-2" style="width: 19rem;background-color:orange;">
            <img src="https://cdn.elearningindustry.com/wp-content/uploads/2015/05/Online-Learning-Teaching-Techniques-800x800.jpg"class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title"style="color:white;">ENGLISH</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="/coursedetails" class="btn btn-success">Coure Details</a>
            </div>
          </div>
          <div class="card shadow m-2" style="width: 19rem;background-color:orange;">
            <img src="https://cdn.elearningindustry.com/wp-content/uploads/2015/05/Online-Learning-Teaching-Techniques-800x800.jpg"class="card-img-top" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title"style="color:white;">MATH</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="/coursedetails" class="btn btn-success">Coure Details</a>
            </div>
          </div>
    </div>
    <div class="row mb-3 justify-content-center">
        <div class="card shadow m-2" style="width: 19rem;">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
          <div class="card shadow m-2" style="width: 19rem;">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
          <div class="card shadow m-2" style="width: 19rem;">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
    </div>
 <div class="text-center" style="background-color:rgb(184, 8, 137); font-size: large; border-radius: 25px;">
        <h3 style="color:white; ">Our Mentor</h3>
    </div>
   <div class="row justify-content-center mb-3">
        <div class="card shadow m-2" style="width: 14rem;">
            <img src="https://marvel-b1-cdn.bc0a.com/f00000000128518/www.torrens.edu.au/-/media/project/laureate/shared/tiles/home/torrens-university-australia-design-courses-tile.png?h=141&iar=0&w=250&rev=be4a038543a14030b201918056d83a9b&hash=B05B811DD1AE3637EC979550D7E58D99" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
          <div class="card shadow m-2" style="width: 14rem;">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
          <div class="card shadow m-2" style="width: 14rem;">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
    </div> 
     <div class="text-center" style="background-color:rgb(184, 8, 137); font-size: large; border-radius: 25px;">
        <h3 style="color:white">Our Student Opinion</h3>
    </div>
     <div class="row justify-content-center mb-3">
        <div class="card shadow m-2" style="width: 10rem;">
            <img src="https://marvel-b1-cdn.bc0a.com/f00000000128518/www.torrens.edu.au/-/media/project/laureate/shared/tiles/home/torrens-university-australia-design-courses-tile.png?h=141&iar=0&w=250&rev=be4a038543a14030b201918056d83a9b&hash=B05B811DD1AE3637EC979550D7E58D99" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text.</p>
              
            </div>
          </div>
          <div class="card shadow m-2" style="width: 10rem;">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text..</p>
              
            </div>
          </div>
          <div class="card shadow m-2" style="width: 10rem;">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text.</p>
              
            </div>
          </div>
    </div > 
    <div class="text-center">All Right Reserve By EDCARE. Design and develop by Asik Zaman</div>
</div>
</body>
</html>