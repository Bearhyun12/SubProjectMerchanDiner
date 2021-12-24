<%@ page import="spms.vo.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	//HttpSession 데이터 보관소에 저장된 member 객체 꺼내서 사용
	//Member member = (Member)session.getAttribute("Member");
%>
 <nav class="nav">
      <div>
        <!--로그인 버튼-->
        <c:if test="${empty Customer or empty Customer.id }">
        	<button class="btn" data-bs-toggle="modal" data-bs-target="#login-modal">로그인</button>
        </c:if>
        <c:if test="${!empty Customer and !empty Customer.id }">
        	${Customer.nickname }
      
        	<a  href="<%=request.getContextPath() %>/auth/logout.do">로그아웃</a>	
        </c:if>
        
        	
        
        <!--로그인 모달 영역-->
        <div class="modal fade" id="login-modal" role="login" aria-labelledby="login" 
        aria-hidden="true" tabindex="-1">
          <!--modal-dailog : 모달 창 영역 설정-->
          <div class="modal-dialog">
            <!--modal-content : 모달 창 콘텐츠 영역 설정-->
            <div class="modal-content">
                <!--modal-header : 모달 창 콘텐츠의 헤더영역-->
                <div class="modal-header modal-header-custom">
                    <h4 class="modal-title modal-title-custom">로그인</h4>
                </div>
                <!--modal-body : 모달 창 콘텐츠의 바디영역-->
                
                
                <form action="/auth/login.do" method="post">
                <div class="modal-body">
                  <div class="row modal-login-box">
                    <label for="login-id" class="col-md-4">아이디</label>
                    <input type="text" name = "id" id="login-id" class="col-md-8 login-input" required>
                  </div>
                    <div class="row modal-login-box">
                      <label for="login-pw" class="col-md-4">비밀번호</label>
                      <input type="password"  name = "password" id="login-pw" class="col-md-8 login-input" required maxlength="12">
                    </div>
                </div>
                <!--modal-footer : 모달 창 콘텐츠의 푸터영역-->
                <div class="modal-footer">
                  <div class="modal-footer-custom">
                  	
                  	<input type="submit" value="로그인">
                </form>
                      
                
                    <button type="button" class="btn login-sm" data-bs-dismiss="modal">
                      로그인 취소
                    </button>
                    <!--회원가입 페이지 이동-->
                   <a href="/customer/add.do" class="login-sm">회원가입</a>
                    </button>
                  </div>
                </div>
            </div>
        </div>

      </div>
        <!--메뉴 토글 모달 영역-->
        <button class="btn" data-bs-toggle="modal" data-bs-target="#menu-toggle-modal"><i class="fas fa-bars fa-lg menu-toggle"></i></button>
        <div class="modal" id="menu-toggle-modal" role="menu-toggle" aria-labelledby="menu-toggle" 
        aria-hidden="true" tabindex="-1">
          <!--modal-dailog : 모달 창 영역 설정 커스텀 클래스를 줘서 우측에서 출력되도록 함-->
          <div class="modal-dialog custom-modal-dialog">
            <!--modal-content : 모달 창 콘텐츠 영역 설정-->
            <div class="modal-content custom-modal-content">
                <!--modal-header : 모달 창 콘텐츠의 헤더영역-->
                <div class="modal-header modal-header-custom">
                      <button type="button" class="btn login-sm modal-exit" 
                    data-bs-dismiss="modal">
                    <i class="fas fa-times fa-2x"></i>
                    </button>
                </div>
                <!--modal-body : 모달 창 콘텐츠의 바디영역-->
                <div class="modal-body">
                  <div class="row modal-login-box">
                    <a href="#"><i class="far fa-comment-alt fa-2x"></i><div class="col-md-12 ">의견제보</div></a>
                  </div>
                    <div class="row modal-login-box">
                      <a href="Mailto:merchanDiner@example.com?Subject=이메일%20a문의"><i class="far fa-paper-plane fa-2x"></i><div class="col-md-12 ">이메일 문의</div></a>
                    </div>
                          <c:if test="${!empty Customer and !empty Customer.id }">
           			<div class="row modal-login-box">
                      <a href="mypage.jsp"><i class="far fa-user-circle fa-2x"></i><div class="col-md-12 ">마이 페이지</div></a>
                     </div>
            		 <div class="row modal-login-box">
                      <a href="store/Detail-page-enroll.jsp"><i class="fas fa-home fa-2x"></i><div class="col-md-12 ">맛집 등록</div></a>
                    </div>
                    <div class="row modal-login-box">
                      <a href="map-meat.jsp"><i class="fas fa-map fa-2x"></i><div class="col-md-12 ">맛집 지도에서 등록</div></a>
                    </div>   
                 
                 </c:if>
                    
                    
                </div>  
                <!--modal-footer : 모달 창 콘텐츠의 푸터영역-->
                <div class="modal-footer">
                  <!--페북, 인스타, 유튜브, 카카오톡 등 링크 설정-->
                    <div class="menu-toggle-footer">
                      <a href="#" class="menu-toggle-footer-items"><i class="fab fa-facebook fa-lg"></i></a>
                      <a href="#" class="menu-toggle-footer-items"><i class="fab fa-instagram fa-lg"></i></a>
                      <a href="#" class="menu-toggle-footer-items"><i class="fab fa-youtube fa-lg"></i></a>
                      <a href="#" class="menu-toggle-footer-items"><i class="fas fa-comment kakao fa-lg"></i></a>
                    </div>
                </div>
            </div>
        </div>
      </div>
      </div>
    </nav>
	

</span>
</div>