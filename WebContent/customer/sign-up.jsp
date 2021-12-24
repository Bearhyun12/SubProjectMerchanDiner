<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Merchan, Diner !</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/main-page.css" />
    <script src="js/bootstrap.min.js"></script>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Jua&display=swap");
      * {
        font-family: "Jua", sans-serif;
        letter-spacing: 1px;
        font-weight: 100;
      }
      body {
        background-color: rgb(254, 243, 232);
      }

      a {
        color: black;
      }
      a:hover {
        text-decoration: none;
      }

      .input-form {
        max-width: 680px;
        margin-top: 80px;
        padding: 32px;
        background: #fff;
        -webkit-border-radius: 10px;
        -moz-border-radius: 10px;
        border-radius: 10px;
        -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
        -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
        box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      }
      #red {
        background-color: rgb(160, 28, 85);
      }
      /*9.28 회원가입 푸터 부분 CSS 추가*/
      .sign-up-footer {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
      }
      .sign-up-footer-items {
        margin-bottom: 15px;
        width: 100%;
        text-align: center;
      }
      /*footer에 hr(선 부분) 마진 탑 10%부여*/
      #footer-hr {
        margin-top: 10%;
      }
    </style>
  </head>

  <body>
    <!--바디 영역-->
    <div class="container">
      <div class="input-form-backgroud row">
        <div class="input-form col-md-12 mx-auto">
          <h4 class="mb-3">회원가입</h4>
          <form action="/customer/add.do" class="validation-form" novalidate>
            <div class="mb-3">
              <label for="id">아이디</label>
              <input
                type="text"
                class="form-control"
                id="id"
                name="ID"
                placeholder="아이디 입력"
                maxlength="12"
                required
              />
              <div class="invalid-feedback">아이디를 입력해주세요.</div>
            </div>
            <div class="mb-3">
              <label for="password">비밀번호</label>
              <input
                type="password"
                class="form-control"
                id="password"
                name="PASSWORD"
                placeholder="비밀번호 입력"
                maxlength="12"
                required
              />
              <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
            </div>
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="name">이름</label>
                <input
                  type="text"
                  class="form-control"
                  id="name"
                  name="NAME"
                  placeholder=""
                  value=""
                  required
                />
                <div class="invalid-feedback">이름을 입력해주세요.</div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="nickname">별명</label>
                <input
                  type="text"
                  class="form-control"
                  id="nickname"
                  name="NICKNAME"
                  placeholder=""
                  value=""
                  required
                />
                <div class="invalid-feedback">별명을 입력해주세요.</div>
              </div>
            </div>
            <div class="mb-3">
              <label for="email">이메일</label>
              <input
                type="email"
                class="form-control"
                id="email"
                name="EMAIL"
                placeholder="you@example.com"
                required
              />
              <div class="invalid-feedback">이메일을 입력해주세요.</div>
            </div>
            <div class="mb-3">
              <label for="address">주소</label>
              <input
                type="text"
                class="form-control"
                id="address"
                name="ADDRESS"
                placeholder="서울특별시 강남구"
                required
              />
              <div class="invalid-feedback">주소를 입력해주세요.</div>
            </div>

            <div class="row">
              <div class="mb-3">
                <label for="root">가입 경로</label>
                <select class="custom-select d-block w-100" id="root">
                  <option value=""></option>
                  <option>검색</option>
                  <option>카페</option>
                </select>
                <div class="invalid-feedback">가입 경로를 선택해주세요.</div>
              </div>
            </div>
            <hr class="mb-4" />
            <div class="custom-control custom-checkbox">
              <input
                type="checkbox"
                class="custom-control-input"
                id="aggrement"
                required
              />
              <label class="custom-control-label" for="aggrement"
                >개인정보 수집 및 이용에 동의합니다.</label
              >
            </div>
            <div class="mb-4"></div>
            <!--버튼 submit 타입이라 일단 주석 처리함-->
            <!-- <button
              id="red"
              class="btn btn-primary btn-lg btn-block"
              type="submit"
            >
              가입 완료
            </button> -->

            <!--9.28 회원가입 버튼 영역 일부 수정 및 회원가입 취소 버튼 추가-->
            <!--10.20 next button타입에서 submit타입으로 변경 -->
            <div class="sign-up-footer">
              <div class="sign-up-footer-items">
                <button
                    type="submit"
                    class="btn btn-success btn-lg btn-block button-custom"
                    id="red"
                  >가입
                  </button>
              </div>
              <div class="sign-up-footer-items">
                <a href="main-page.jsp">회원가입 취소</a>
              </div>
            </div>
          </form>
        </div>
      </div>
      <!-- <footer class="my-3 text-center text-small">
        <p class="mb-1">&copy; 2021 HS</p>
      </footer> -->
    </div>

    <!--9.28 푸터 영역 추가-->
    <hr id="footer-hr" />
    <footer class="footer">
      <div>개인정보 처리 방침</div>
      <br />
      <div class="font-sm">Copyrightⓒ B반 6조 All right reserved.</div>
      <div class="font-sm">Icon reference - https://www.flaticon.com/</div>
    </footer>
    <script>
      window.addEventListener(
        "load",
        () => {
          const forms = document.getElementsByClassName("validation-form");
          Array.prototype.filter.call(forms, (form) => {
            form.addEventListener(
              "submit",
              function (event) {
                if (form.checkValidity() === false) {
                  event.preventDefault();
                  event.stopPropagation();
                }
                form.classList.add("was-validated");
              },
              false
            );
          });
        },
        false
      );
    </script>
  </body>
</html>
