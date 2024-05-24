<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <!--오른쪽-->
        <aside>
            <h4 class="fw-bold">Latest posts</h4>
            <div class="recent-post">
                <a href="#" class="thumb">
                    <div class="recent-post-box"><i class="ri-links-fill"></i></div>
                    <img src="res/images/호주.jpg" alt="0">
                </a>
                <a href="#" class="post-text travel">
                    <h6 class="fw-bold">이번 여행에서 건진 사진</h6>
                </a>
            </div>

            <div class="recent-post">
                <a href="#" class="thumb">
                    <div class="recent-post-box"><i class="ri-links-fill"></i></div>
                    <img src="res/images/호주1.jpg" alt="1">
                </a>
                <a href="#" class="post-text fashion">
                    <h6 class="fw-bold">이번 여행에서 건진 사진</h6>
                </a>
            </div>

            <div class="recent-post">
                <a href="#" class="thumb">
                    <div class="recent-post-box"><i class="ri-links-fill"></i></div>
                    <img src="res/images/호주7.jpg" alt="7">
                </a>
                <a href="#" class="post-text sports">
                    <h6 class="fw-bold">이번 여행에서 건진 사진</h6>
                </a>
            </div>

            <div class="recent-post">
                <a href="#" class="thumb">
                    <div class="recent-post-box"><i class="ri-links-fill"></i></div>
                    <img src="res/images/호주8.jpg" alt="8">
                </a>
                <a href="#" class="post-text photography">
                    <h6 class="fw-bold">이번 여행에서 건진 사진</h6>
                </a>
            </div>

            <!--검색-->
            <div class="searchbox">
                <form class="search">
                    <input type="search" placeholder="SEARCH">
                    <button type="submit"><i class="ri-search-line"></i></button>
                </form>
            </div>
            <!--/검색-->
            <div class="posttag">
                <h4 class="fw-bold">Popular tags</h4>
                <div class="d-flex flex-wrap">
                    <a href="#">Health</a>
                    <a href="#">Jeju</a>
                    <a href="#">Swimming</a>
                    <a href="#">국가대표</a>
                    <a href="#">walking</a>
                    <a href="#">Jumping</a>
                    <a href="#">lake</a>
                    <a href="#">motivation</a>
                    <a href="#">notebook</a>
                </div>
            </div>
        </aside>
    </div>

    <!-- popup창 -->
    <div class="zoombox">
        <div class="close"><i class="fa-solid fa-xmark"></i></div>
        <div class="zoombody"></div>
    </div>
    <!-- /popup창 -->
    
    <div class="signuppopup">
        <h4 class="fw-bold mb-5">회원가입</h4>
        <form>
            <div class="mb-3 me-4 col-6">
                <label for="name" class="form-label">Your Name</label>
                <input type="text" class="form-control" id="name" placeholder="이름">
            </div>
            <div class="mb-3 me-4 col-6">
                <label for="username" class="form-label">Your Id</label>
                <input type="text" class="form-control" id="username" placeholder="아이디">
            </div>
            <div class="mb-3 me-4 col-6">
                <label for="password" class="form-label">Your Password</label>
                <input type="password" class="form-control" id="password" placeholder="비밀번호">
            </div>
            <div class="mb-3 me-4 col-6">
                <label for="repassword" class="form-label">Re Your Password</label>
                <input type="password" class="form-control" id="repassword" placeholder="비밀번호 확인">
            </div>
            <div class="mb-3 me-4 col-8">
                <label for="email" class="form-label">Email Address</label>
                <input type="email" class="form-control" id="email" placeholder="이메일 주소">
            </div>            
            <div class="mb-3 me-4 col-8">
                <label for="tel" class="form-label">Your PhoneNumber</label>
                <input type="tel" class="form-control" id="tel" placeholder="전화번호">
            </div>
            <div class="my-5 mb-2 text-center">
                <button type="button" class="reset btn btn-outline-danger me-2">취소</button>
                <button type="submit" class="btn btn-outline-dark ms-2">전송</button>
            </div>
        </form>
    </div>
     <!-- /Sign -->
    <div class="find-id">
        아이디/패스워드 찾기
    </div>

</body>
</html>