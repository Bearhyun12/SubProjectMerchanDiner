<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="spms.vo.Customer" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Merchan, Diner !</title>
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
      integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/main-page.css" />
    <link rel="stylesheet" href="css/page.css" />
    <link rel="stylesheet" href="css/map.css" />
    <link rel="stylesheet" href="css/map-modal-page.css" />
    <script
      src="https://kit.fontawesome.com/84aa3774b7.js"
      crossorigin="anonymous"
    ></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Jua&display=swap");
      * {
        font-family: "Jua", sans-serif;
        letter-spacing: 1px;
        font-weight: 100;
      }
    </style>
  </head>
  <body>
    <div id="map" class="map-section" style="width: 100%; height: 98vh">
      <!--Map 네비게이션 부분-->
      <nav class="map-nav row">
        <div class="col-md-8">
          <a href="main-page.html"
            ><button class="btn btn-success shadow btn-bg-color">
              <i class="fas fa-arrow-left fa-lg"></i></button
          ></a>
          <button class="btn btn-success wide-button shadow btn-bg-color">
            🍗지윤님고기(가 들어간)용산맛집🍖
          </button>
          <button class="btn btn-success shadow btn-bg-color" onclick="heart()">
            <div style="width: 20px; height: 25px;">
              <img  id="heart" src="images/heart-regular.svg" style="width: 20px; height:20px;"></img>
              <img  id="heartout" src="images/heart-solid.svg" style="width: 20px; height:20px;"></img>
            </div>
          </button>
        </div>
        <div class="col-md-4 nav-item-right">
          <!--맵안에 메뉴 토글 버튼-->
          <button
            class="
              btn btn-lg btn-success
              shadow
              btn-bg-color
              .btn-custom-radius
            "
            style="width: 3.5rem"
            data-bs-toggle="modal"
            data-bs-target="#menu-toggle-modal"
          >
            <i class="fas fa-bars fa-lg menu-toggle"></i>
          </button>
        </div>
      </nav>
      <!--멥안에 메뉴 토글 부분-->
      <div
        class="modal map-modal-index"
        id="menu-toggle-modal"
        role="menu-toggle"
        aria-labelledby="menu-toggle"
        aria-hidden="true"
        tabindex="-1"
      >
        <!--modal-dailog : 모달 창 영역 설정 커스텀 클래스를 줘서 우측에서 출력되도록 함-->
        <div class="modal-dialog custom-modal-dialog">
          <!--modal-content : 모달 창 콘텐츠 영역 설정-->
          <div class="modal-content custom-modal-content">
            <!--modal-header : 모달 창 콘텐츠의 헤더영역-->
            <div class="modal-header modal-header-custom">
              <button
                type="button"
                class="btn login-sm modal-exit"
                data-bs-dismiss="modal"
              >
                <i class="fas fa-times fa-2x"></i>
              </button>
            </div>
            <!--modal-body : 모달 창 콘텐츠의 바디영역-->
            <div class="modal-body">
              <div class="row modal-login-box">
                <a href="#"
                  ><i class="far fa-comment-alt fa-2x"></i>
                  <div class="col-md-12">의견제보</div></a
                >
              </div>
              <div class="row modal-login-box">
                <a href="#"
                  ><i class="far fa-paper-plane fa-2x"></i>
                  <div class="col-md-12">이메일 문의</div></a
                >
              </div>
            </div>
            <!--modal-footer : 모달 창 콘텐츠의 푸터영역-->
            <div class="modal-footer">
              <!--페북, 인스타, 유튜브, 카카오톡 등 링크 설정-->
              <div class="menu-toggle-footer">
                <a href="#" class="menu-toggle-footer-items"
                  ><i class="fab fa-facebook fa-lg"></i
                ></a>
                <a href="#" class="menu-toggle-footer-items"
                  ><i class="fab fa-instagram fa-lg"></i
                ></a>
                <a href="#" class="menu-toggle-footer-items"
                  ><i class="fab fa-youtube fa-lg"></i
                ></a>
                <a href="#" class="menu-toggle-footer-items"
                  ><i class="fas fa-comment kakao fa-lg"></i
                ></a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--Map 가게 목록 부분-->
      <div id="menu-wrap">
        <div class="list-panel">
          <ul id="placeList">
            <div class="list-item">
              <div class="list-overlay shadow" id="box0">
                <div class="read-more">
                  <!--상세페이지 모달 추가될 부분-->
                  <i
                    class="fas fa-expand-alt"
                    data-bs-toggle="modal"
                    data-bs-target="#map-page-modal"
                  ></i>
                </div>
                 <form action="/store/add.do" method="post">
	                  <div >
	              	    <input type="text" id="store_name" name="store_name" placeholder="가게이름을 입력해주세요">
	                  </div>
	                  <div >
	              	  	 <input type="text" id="store_address" name="store_address" placeholder="가게주소를 입력해주세요">
	                  </div>
	                  <div >
	              	 	 <input type="text" id="hashTag" name="hashTag"placeholder="#해시테그를 입력해주세요 " >
	              	 	 <input type="hidden" id="hashTag" name="id" value="${Customer.id }"placeholder="#해시테그를 입력해주세요 " >
	              	  </div>
	              	  <div>
	              	 	 <input type="submit" value="제출"  >
	              	 </div>
            	  </form>
              </div>
	            <div class="list-item">
	              	<div class="list-overlay shadow" id="box1">
	                	<div class="read-more">
		                  <a>
		                    <i class="fas fa-expand-alt"></i>
		                  </a>
                   		 </div>
         	 		</div>
              	</div>
              <c:forEach var="store" items="${stores }">
                <div class="place-name">${store.store_name }</div>
                <div class="place-address">
                  ${store.store_address }
                </div>
                <div class="theme-name">${store.hashTag }</div>
                <div class="list-item">
                  <div class="list-overlay shadow" id="box1">
                    <div class="read-more">
                      <a>
                        <i class="fas fa-expand-alt"></i>
                      </a>
                    </div>
                  </div>
                </div>
              </c:forEach>
            </div>
          </ul>
        </div>
      </div>
      <!--상세페이지 모달 부분-->
     
             
            <!--modal-footer : 모달 창 콘텐츠의 푸터영역-->
           
          </div>
        </div>
      </div>
      <!--다른사람의 지도 랜덤으로 보는 버튼-->
      <a href="map-coffee.html" class="">
        <div class="menu-footer shadow">
          <div class="menu-footer-icon">
            <div class="menu-footer-iconbox">
              <i class="fas fa-redo-alt fa-2x"></i>
            </div>
          </div>
          <div class="menu-footer-textbox">
            <div class="menu-footer-text-inner">
              다른 머천다이너의 지도 보기
            </div>
          </div>
        </div>
      </a>
    </div>
    
    <script
      type="text/javascript"
      src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=7f7aaf0e4c0e87d3a6bc257b1b323e35&libraries=services"
    ></script>
    <script>
      var mapContainer = document.getElementById("map"), // 지도를 표시할 div
        mapOption = {
          center: new kakao.maps.LatLng(37.5301083, 126.970044), // 지도의 중심좌표
          level: 4, // 지도의 확대 레벨
        };

      var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

      
      
      
      // 마커를 표시할 위치와 title 객체 배열입니다
      var positions = [
        {
          title: "서울케밥",
          latlng: new kakao.maps.LatLng(37.5329901, 126.965009),
        },
        {
          title: "더보일러스",
          latlng: new kakao.maps.LatLng(37.5330347, 126.963741),
        },
        {
          title: "양인환대",
          latlng: new kakao.maps.LatLng(37.5301083, 126.970044),
        },
        {
          title: "더백테라스",
          latlng: new kakao.maps.LatLng(37.5300184, 126.970587),
        },
        {
          title: "효뜨 ",
          latlng: new kakao.maps.LatLng(37.5303249, 126.971289),
        },
      ];

      // 마커 이미지의 이미지 주소입니다
      var imageSrc = "images/map-marker.svg";

      for (var i = 0; i < positions.length; i++) {
        addMarker(positions[i].latlng, positions[i].title, i);

      }

      const boxInner = document.querySelector(".inner-box");

      function addMarker(latlng, title, index) {
    

        // 마커 이미지의 이미지 크기 입니다
        var imageSize = new kakao.maps.Size(24, 35);

        // 마커 이미지를 생성합니다
        var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
          map: map, // 마커를 표시할 지도
          position: latlng, // 마커를 표시할 위치
          clickable: true, //클릭 메소드
          title: title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
          image: markerImage, // 마커 이미지
        });

        var geocoder = new kakao.maps.services.Geocoder();
       
     // 주소로 좌표를 검색합니다
     geocoder.addressSearch('서울특별시 용산구 한강로1가 45-1', function(result, status) {

         // 정상적으로 검색이 완료됐으면 
          if (status === kakao.maps.services.Status.OK) {

             var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

             // 결과값으로 받은 위치를 마커로 표시합니다
             var nowmarker = new kakao.maps.Marker({
                 map: map,
                 position: coords
             });

             // 인포윈도우로 장소에 대한 설명을 표시합니다
             var infowindow = new kakao.maps.InfoWindow({
                 content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
             });
             infowindow.open(map, nowmarker);

             // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
             map.setCenter(coords);
         } 
     });    
        
        
        
        
        
        
        
        
        kakao.maps.event.addListener(marker, "click", function () {
          page(title);
        });

        let boxId = document.querySelector("#box");

        kakao.maps.event.addListener(marker, "mouseover", function () {
          let boxId = document.querySelector("#box" + index);
          boxId.classList.add("inner-box");
        });
        kakao.maps.event.addListener(marker, "mouseout", function () {
          let boxId = document.querySelector("#box" + index);
          boxId.classList.remove("inner-box");
        });
        // kakao.maps.event.addListener(marker, "mouseover", function () {
        //   $("#box" + index).addClass("inner-box");
        // });

        // kakao.maps.event.addListener(marker, "mouseout", function () {
        //   $("#box" + index).removeClass("inner-box");
        // });
      }

      function page(titles) {
        // location.href = "info.html?" + title;
        location.href = "info" + title + ".html";
        location.title = titles;
      }

      function hoverEvent(title) {}
      function mousepage() {}

      function sign() {
        location.href = "sign.html";
      }
      function login() {
        location.href = "sign.html";
      }

      function SearchPage() {
        location.href = "SearchPage.html";
      }

      function boxEvent(e) {
        boxInner.classList.add("inner-box");
      }
    </script>
    <!--하트 변경되는 효과-->
    <script>
      $(document).ready(function(){
              /*웹페이지 열었을 때*/
              $("#heart").show();
              $("#heartout").hide();
   
              /*heart을 클릭했을 때 heartout를 보여줌*/
              $("#heart").click(function(){
                  $("#heart").hide();
                  $("#heartout").show();
              });
   
              /*heartout를 클릭했을 때 heart을 보여줌*/
              $("#heartout").click(function(){
                  $("#heart").show();
                  $("#heartout").hide();
              });
          });
    </script>
  </body>
</html>
