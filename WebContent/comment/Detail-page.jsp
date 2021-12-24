<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <div class="input-form-backgroud row">
            <div class="input-form col-md-12 mx-auto" style="margin-bottom: 80px;">
                <h5 class="mb-3" style="color: rgb(160, 28, 85);"><strong>가게이름</strong></h5>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="name">가게주소</label>
                    </div>
                </div>

    <!--테마-->
    <br>
    <h5 class="mb-3"><strong>여기는 어떤 곳인가요?</strong></h5>
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
    </div>   
    
    
    
    
    

    
    <!--리뷰저장버튼-->
    <form action="add.do" method="post" >
    <input type="text"  name="id"></input>
    <input type="text"  name="store_num"></input>
    <input type="text" name="contents" style="width:100%; height: 100px" rows="5" id="textarea"></input>
    <div class="mb-4"></div>
    <div class="flex-box-container">
     <button style="font-size: 15px;" id="red" class="btn btn-primary btn-lg btn-block " type="submit">등록</button>
     <a href="main-page-logined.html">
         <button style="font-size: 15px;" id="red" class="btn btn-primary btn-lg btn-block " type="submit">홈으로</button>
        </a>
    </div>
    </form>

		
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