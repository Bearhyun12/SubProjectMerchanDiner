<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <form action="/store/add.do" method="post" class="container">
        <!--가게이름 및 주소-->
        <div class="container">
            <div class="input-form-backgroud row">
                <div class="input-form col-md-12 mx-auto" style="margin-bottom: 80px;">
                    <div class="row" style="margin-bottom: 15px;">
                        <label for="store_name">
                        <h5 class="mb-3" style="color: rgb(160, 28, 85);"><strong>가게이름</strong></h5>
                        </label>
                        <input type="text" id="store_name" name="store_name" >
                    </div>
                    <div class="row">
                        <label for="store_address">
                        <h5 class="mb-3" style="color: rgb(160, 28, 85);"><strong>가게주소</strong></h5>
                        </label>
                        <input type="text" id="store_address" name="store_address" >
                    </div>

        <!--테마-->
        <br>
        <h5 class="mb-3" style="color: rgb(160, 28, 85);"><strong>여기는 어떤 곳인가요?</strong></h5>
        <div class="row">
            <div class="col-md-9 mb-3" style="border: 1px solid black; padding: 10px;">
                <label for="westen"><img src="../images/hamburger.png" class="minimize"> 양식</label>
                <input type="radio" id="westen" name="type" value="westen" style="margin-right : 50px">
                <label for="korean"><img src="../images/rice.png" class="minimize"> 한식</label>
                <input type="radio" id="korean" name="type" value="korean" style="margin-right : 50px">
                <label for="chinese"><img src="../images/noodle.png" class="minimize"> 중식</label>
                <input type="radio" id="chinese" name="type" value="chinese" style="margin-right : 50px">
                <label for="japanese"><img src="../images/sushi.png" class="minimize"> 일식</label>
                <input type="radio" id="japanese" name="type" value="japanese">
            </div>
        </div>
        <!--리뷰보여주기-->


    <!-- 카카오 맵에서 주소와 위도 찍어올 수 있도록 만들어 보기-->
        

        
        <!--리뷰저장버튼-->
        <div class="mb-4"></div>
        <div class="flex-box-container">
        <input type="hidden" name="id", value="${Customer.id}" />
        <button style="font-size: 15px;" id="red" class="btn btn-primary btn-lg btn-block " type="submit" value="저장">저장</button>
        <button style="font-size: 15px;" id="red" class="btn btn-primary btn-lg btn-block " type="button" value="취소" onclick="location.href='../main-page.jsp'">홈으로</button>
        </div>
    </form>
    <!--하단-->
    <footer class="my-3 text-center text-small">
        <p class="mb-1">&copy; 2021 Merchar, Diner!</p>
    </footer>

</body>
</html>