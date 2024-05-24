<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>my blog</title>
    <!--bootstrap-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <!--fontawsome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
     <!--font-->
     <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
     <!--remixicon cdn-->
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/4.2.0/remixicon.css">
    <!--css-->
    <link rel="stylesheet" href="res/css/style.css" />
   
    <!--favicon은 가장 아래에 있는게 좋음-->
    <link rel="icon" href="res/images/favicon_io (1)/favicon-16x16.png" size="any">
    <!--jquery-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!--script-->
    <script src="res/js/script.js"></script>  
   
</head>
<body>
    <!--왼쪽-->
    <header>
       <div class="logo">
        <a href="#"><img src="res/images/logo.png" alt="logo"></a>
       </div>
       <div class="signin text-center">
         <h3 class="mb-3">LOGIN</h3>
         <form>
            <div class="mb-3">
                <input type="text" 
                       name="username" 
                       class="form-control" 
                       placeholder="username"/>
            </div>
            <div class="mb-3">
                <input type="password" 
                       name="password" 
                       class="form-control" 
                       placeholder="password"/>
            </div>
            <div class="mb-2 text-end">
                <a href="#" class="find-id">아이디/패스워드 찾기</a>
            </div>
            <div class="d-grid">
                <button type="submit" class="btn btn-outline-warning">LOGIN</button>
            </div>
         </form>
       </div>
       <div class="my-2 text-end"><a href="#" class="signup">회원가입</a></div>
        <nav>
            <ul class="main-nav mt-5">
                <li><a href="about">about me</a></li>
                <li><a href="./">my gallery</a></li>
                <li><a href="https://github.com/freshsong" target="_blank">my project</a></li>
                <li><a href="youtube">youtube link</a></li>
                <li><a href="contact">contact me</a></li>    
            </ul>
        </nav>
        <div class="social">
            <a href="#" class="instagram"><i class="ri-instagram-line"></i></a>
            <a href="#" class="youtube"><i class="ri-youtube-line"></i></a>
            <a href="#" class="kakaotalk"><i class="ri-kakao-talk-line"></i></a>
            <a href="#" class="facebook"><i class="ri-facebook-circle-line"></i></a>
        </div>
        <div class="copyright">
            Copyright &copy; songe's.
        </div>
    </header>
    <div class="wrapper">