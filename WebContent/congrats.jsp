<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" ,content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Merchan, Diner !</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- <link rel="stylesheet" href="theme_1632474732444.css"> -->
    <link rel="stylesheet" href="css/SearchPage.css" />
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <script
      src="https://kit.fontawesome.com/84aa3774b7.js"
      crossorigin="anonymous"
    ></script>
    <link rel=”stylesheet”
    href=”http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css“>
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
    <div class="row col-md-12">
      <a href="main-page.html">
        <img style="width: 100%; left: 10%" src="images/축하.png" alt="" />
      </a>
    </div>
    <div>
      <div style="text-align: center; font-size: 30px">메인페이지로</div>
    </div>
  </body>

  <script>
    function main() {
      location.href = "main.html";
    }

    function sign() {
      location.href = "sign.html";
    }
    function login() {
      location.href = "sign.html";
    }

    function SearchPage() {
      location.href = "SearchPage.html";
    }
  </script>
</html>
