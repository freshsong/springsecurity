<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="include/header.jsp" %>

        <!-- main -->
        <!--가운데-->
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                <h1 class="text-center mb-5">My Youtube Link</h1>
                    <!--loop-->
                    <div class="col-md-4 mb-4">
                        <a href="#" data-id="GhwPPlAd9PY" class="card-youtube border d-block">  
                            <img src="https://i1.ytimg.com/vi/GhwPPlAd9PY/hqdefault.jpg" class="img-fluid" alt="YouTube video player"/>  
                            <h5 class="p-3">폭스클럽 봤냐?</h5>
                        </a> 
                    </div>
                    <!--/loop-->
                    <div class="col-md-4 mb-4">
                        <a href="#" data-id="Ce7EQ3RJmAg" class="card-youtube border d-block">  
                            <img src="https://i1.ytimg.com/vi/Ce7EQ3RJmAg/hqdefault.jpg" class="img-fluid" alt="YouTube video player"/>  
                            <h5 class="p-3">런닝맨 꿀잼</h5>
                        </a> 
                    </div>
                    <div class="col-md-4 mb-4">
                        <a href="#" data-id="uAb2Vz8V9DQ" class="card-youtube border d-block">  
                            <img src="https://i1.ytimg.com/vi/uAb2Vz8V9DQ/hqdefault.jpg" class="img-fluid" alt="YouTube video player"/>  
                            <h5 class="p-3">핸드폰금지</h5>
                        </a> 
                    </div>
                    <div class="col-md-4 mb-4">
                        <a href="#" data-id="Y8HIGfIOvxI" class="card-youtube border d-block">  
                            <img src="https://i1.ytimg.com/vi/Y8HIGfIOvxI/hqdefault.jpg" class="img-fluid" alt="YouTube video player"/>  
                            <h5 class="p-3">조나단 소개팅</h5>
                        </a> 
                    </div>
                   
                </div>
            </div>
        </div>
        <!-- /main -->
        
   <!--youtube popup / 유튜브화면 팝업처리 -->
     <div class="youtube-popup">
        <div class="close"><i class="fa-solid fa-xmark"></i></div>
        <div class="youtube-body"></div>
    </div>

    <!--/youtube popu / 유튜브화면 팝업처리 -->

<%@ include file="include/footer.jsp" %>