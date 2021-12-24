<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <!DOCTYPE html>
    <html lang="ko">
      <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Merchan, Diner !</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/main-page.css">
    <link rel="stylesheet" href="css/page.css" />
    <link rel="stylesheet" href="css/map.css" />
    <link rel="stylesheet" href="css/map-modal-page.css" />
    <!-- <link rel="stylesheet" href="project-style.css"> -->
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery-3.6.0.min.js"></script>
    <script src="https://kit.fontawesome.com/84aa3774b7.js" crossorigin="anonymous"></script>
    <link rel=”stylesheet” href=”http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css“>
    <style>
         @import url("https://fonts.googleapis.com/css2?family=Jua&display=swap");
    * {
        font-family: "Jua", sans-serif;
        letter-spacing: 1px;
        font-weight: 100;
    }
    body {
        background-color: rgb(254, 243, 232);
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .input-form {
        max-width: 680px;
        margin-top: 80px;
        padding: 30px;
        background: #fff;
        -webkit-border-radius: 10px;
        -moz-border-radius: 10px;
        border-radius: 10px;
        -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
        -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
        box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }

    .starR1{
        background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat -52px 0;
        background-size: auto 100%;
        width: 15px;
        height: 30px;
        float:left; 
        text-indent: -9999px;
        cursor: pointer;
    }
    .starR2{
        background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
        background-size: auto 100%;
        width: 15px;
        height: 30px;
        float:left;
        text-indent: -9999px;
        cursor: pointer;
    }
    .starR1.on{background-position:0 0;}
    .starR2.on{background-position:-15px 0;}

    #red{
        background-color: rgb(160, 28, 85);
        color: white;
        margin: auto;
    }

    .minimize {
        width: 20px;
        height: 20px;
    }

    .marginSet {
        margin-top: 45px;
        margin-left: 10px;
    }


   
</style>
</head>
<body class="center">
    <!--가게이름 및 주소-->
    <div class="container">
       	<input type="hidden" name="store_num" value="${store.store_num }">
       	<input type="hidden" name="id" value="${store.id }">
        <div class="input-form-backgroud row">
            <div class="input-form col-md-12 mx-auto" style="margin-bottom: 80px;">
                <h5 class="mb-3" style="color: rgb(160, 28, 85);"><strong>${store.store_name }</strong></h5>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="name">${store.store_address }</label>
                    </div>
                </div>

    <!--테마-->
    <br>
    <h5 class="mb-3"><strong>여기는 어떤 곳인가요? (해시태그 들어갈 공간)</strong></h5>
    <body class="row">
        <div class="col-md-6 mb-3" style="border: 1px solid black; padding: 10px;">
            <label for="name"><img src="images/hamburger.png" class="minimize"> 내가 먹어 본 인생 햄버거</label>
        </div>

    <!--리뷰보여주기-->


    <!--리뷰작성-->
    <br>
    <div class="review_contents">
        <h5><strong>어떤게 좋았어요?</strong></h5>
        <div class="col-2">짠맛</div>
        <div class="col-7">
            <div class="starRev">
                <span class="starR1 on">별1_왼쪽</span>
                <span class="starR2">별1_오른쪽</span>
                <span class="starR1">별2_왼쪽</span>
                <span class="starR2">별2_오른쪽</span>
                <span class="starR1">별3_왼쪽</span>
                <span class="starR2">별3_오른쪽</span>
                <span class="starR1">별4_왼쪽</span>
                <span class="starR2">별4_오른쪽</span>
                <span class="starR1">별5_왼쪽</span>
                <span class="starR2">별5_오른쪽</span>
            </div>
        </div>
        <div class="col-3"></div>
        <div class="col-2">단맛</div>
        <div class="col-7">
            <div class="starRev">
                <span class="starR1 on">별1_왼쪽</span>
                <span class="starR2">별1_오른쪽</span>
                <span class="starR1">별2_왼쪽</span>
                <span class="starR2">별2_오른쪽</span>
                <span class="starR1">별3_왼쪽</span>
                <span class="starR2">별3_오른쪽</span>
                <span class="starR1">별4_왼쪽</span>
                <span class="starR2">별4_오른쪽</span>
                <span class="starR1">별5_왼쪽</span>
                <span class="starR2">별5_오른쪽</span>
            </div>
        </div>
        <div class="col-3"></div>
        <div class="col-2">매운맛</div>
        <div class="col-7">
            <div class="starRev">
                <span class="starR1 on">별1_왼쪽</span>
                <span class="starR2">별1_오른쪽</span>
                <span class="starR1">별2_왼쪽</span>
                <span class="starR2">별2_오른쪽</span>
                <span class="starR1">별3_왼쪽</span>
                <span class="starR2">별3_오른쪽</span>
                <span class="starR1">별4_왼쪽</span>
                <span class="starR2">별4_오른쪽</span>
                <span class="starR1">별5_왼쪽</span>
                <span class="starR2">별5_오른쪽</span>
            </div>
        </div>
        <br>
        <br>
        
              <!--Map 가게 목록 부분-->
    
            <div class="list-item" style="display: flex; flex-direction:column; ">
                <c:forEach var="comment1" items="${comments }" varStatus="status">
                    <div style="display: flex; flex-direction: row; justify-content: space-between; width:100%; align-items: center;">
                        <div class="list-overlay shadow" id="box0" style="display: flex; flex-direction: column; width:80%;">
                            <div class="place-name">${comment1.id}</div>
                            <div class="place-address">
                                ${comment1.contents}
                            </div>
                            <div class="theme-name" style="font-size: 12px;">${comment1.regDate}</div>
                        </div>
                        <div>
                            <button type="button" onclick="location.href='/comment/update.do?'">수정</button>
                            <button type="button" onclick="location.href='/comment/delete.do?comment_num=${comment1.comment_num}'">삭제</button>
                        </div>
                    </div>
          	    </c:forEach>
            </div>
         

        <div class="flex-box-container" style="justify-content: flex-end;" >
	        <form action="/comment/add.do?store_num=${store.store_num }&id=${store.id}" method="post">
	        	<input type="text" name="contents" style="width:100%;" rows="5" id="contents"></input>
	        	<button class="btn btn-primary btn-lg btn-block" type="submit" value="저장">저장</button>
	        </form>
        </div>
    </div>   
    

    
    <!--리뷰저장버튼-->
    <div class="mb-4"></div>
    <div class="flex-box-container">
     	<a href="/store/update.do?store_num=${store.store_num }">
	     <button style="font-size: 15px;" id="red" class="btn btn-primary btn-lg btn-block " type="button" value="수정">수정
	     </button>
	    </a>
	    <a href="/store/delete.do?store_num=${store.store_num }">
          <button style="font-size: 15px;" id="red" class="btn btn-primary btn-lg btn-block " type="button" value="삭제">삭제
          </button>
     	</a>
     <a href="../main-page.jsp">
         <button style="font-size: 15px;" id="red" class="btn btn-primary btn-lg btn-block " type="button">홈으로
         </button>
        </a>
    </div>

    <!--하단-->
    <footer class="my-3 text-center text-small">
        <p class="mb-1">&copy; 2021 Merchar, Diner!</p>
    </footer>

    <script>
    $('.starRev span').click(function () {
        $(this).parent().children('span').removeClass('on');
        $(this).addClass('on').prevAll('span').addClass('on');
        return false;
    });
    </script>
   
</body>
</html>