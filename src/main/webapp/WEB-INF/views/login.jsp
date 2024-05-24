<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">

   <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Resume - Start Bootstrap Theme</title>
        <link rel="icon" type="image/x-icon" href="../res/images/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./res/css/styles.css" rel="stylesheet" />
   </head>
   
   <body id="login">

<div class="container mt-5">
	<div class="row d-flex justify-content-center">
        <div class="col-md-6">
            <div class="card px-5 py-5" id="form1">
                <form:form class="form-data" action="process-login" method="post">
                    <div class="forms-inputs mb-4"> <span>Email or username</span>
                        <input type="text" name="username">
                    </div>
                    <div class="forms-inputs mb-4"> <span>Password</span>
                         <input type="password" name="password">
                    </div>
                    <div class="mb-3">
                      <button type="submit" class="btn btn-dark w-100" value="login">Login</button> 
                    </div>
                    <!-- <input name="_csrf" type="hidden" value="f351f14c-5106-4725-8fcc-efc1d4200c1b" /> 패스워드매번달라짐 - 태그라이브러리 붙여야함-->
                </form:form>
            </div>
        </div>
     </div>
 </div>
 <script src="./res/js/scripts.js"></script>
 </body>
</html>
