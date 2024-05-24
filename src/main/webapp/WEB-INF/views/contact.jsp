<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>

        <!-- main -->
        <!--가운데-->
        <div class="main mt-5 mb-5">
            <div class="container-fluid">
                <div class="row">
                    <h1 class="mb-5">Contact</h3>
                    <div class="col-md-6">
                        <h3 class="mb-4 me-5 fw-bold">궁금한 점은 언제든 연락주세요.</h3>
                        <address>
                            <ul class="address me-5">
                                <li class="py-2 border-bottom"><label>Company : </label> white water </li>
                                <li class="py-2 border-bottom"><label>Address : </label>김포시 장기동 장기역</li>
                                <li class="py-2 border-bottom"><label>WebSite : </label>http://www.com</li>
                                <li class="py-2 border-bottom"><label>My GitHub : </label>http://github.com/freshsong</li>
                            </ul>
                        </address>
                    </div>
                    <div class="col-md-6">
                        <form>
                            <div class="mb-3 me-4">
                                <label for="name" class="form-label">Your Name</label>
                                <input type="text" class="form-control" id="name" placeholder="이름">
                            </div>
                            <div class="mb-3 me-4">
                                <label for="email" class="form-label">Email Address</label>
                                <input type="email" class="form-control" id="email" placeholder="email">
                            </div>
                            <div class="mb-3 me-4">
                                <label for="tel" class="form-label">Phone Number</label>
                                <input type="tel" class="form-control" id="tel" placeholder="전화번호">
                            </div>
                            <div class="mb-3 me-4">
                                <label class="form-label">Content</label>
                                <textarea class="form-control" rows="4" placeholder="더 하고싶은 말씀을 적어주세요."></textarea>
                            </div>
                            <div class="mb-3 me-4">
                                <button type="submit" class="btn btn-outline-dark">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
       </div>
        <!-- /main -->
        <!--오른쪽-->

<%@ include file="include/footer.jsp" %>