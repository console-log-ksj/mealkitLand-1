<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" href="../../static/css/kgm/login.css">
</head>

<body>
    <div class="wrap">
<%@include file="/templates/kgm/header.jsp"%>
        <section id="contents" class="container">
            <div class="login-container">
                <div class="login-area">
                    <div class="login-greeting">
                        <strong class="txt">안녕하세요 :) </strong>
                        <p class="message"><span class="blind"></span>밀키트랜드 입니다.</p>
                    </div>
                    <!--// login-greeting -->

                    <form id="login_form" name="login_form" action="/auth/login" method="post"
                        onsubmit="return onSubmitLogin();" data-gtm-form-interact-id="0"><input type="hidden"
                            name="encId" value="">
                        <input type="hidden" name="endPw" value="">

                        <fieldset>
                            <legend>아이디/비밀번호 입력</legend>
                            <div class="input-group w-full">
                                <label for="id" class="blind">아이디</label>
                                <input type="text" id="id" name="id" class="input-text type-lg" placeholder="아이디"
                                    maxlength="100">
                            </div>
                            <div class="input-group w-full">
                                <label for="pw" class="blind">비밀번호</label>
                                <input type="password" id="pw" class="input-text type-lg" placeholder="비밀번호"
                                    maxlength="100">
                            </div>
                            <div class="chk-area remember-me-con">
                                <div class="custom-checkbox remember-me1-con">
                                    <input type="checkbox" id="remember-me" class="checkbox" name="remember-me"
                                        checked="checked"><label for="remember-me"> 자동로그인</label>
                                </div>
                                <div class="custom-checkbox">
                                    <input type="checkbox" id="remember-me2" class="checkbox" name="remember-me2"
                                        checked="checked"><label for="remember-me2"> 아이디저장</label>
                                </div>
                            </div>
                            <button type="button" onclick="login_check();"class="btn-basic-lg2 btn-primary w-full"><span>로그인</span></button>
                        </fieldset>

                        <div class="page-guide-center find-con">
                            <ul class="txt-link-list">
                                <li><a href="/auth/findid" class="text-black2">아이디 찾기</a></li>
                                <li><a href="/auth/findpw" class="text-black2">비밀번호 찾기</a></li>
                            </ul>
                        </div>

                        <div id="member-login-error-text" style="display:none;">
                        </div>

                    </form>
                </div>
                <!-- //login-area -->
            </div>
            <!-- //login-container -->
        </section>
        <%@include file="/templates/kgm/footer.jsp"%>
    </div>
    <!-- //wrap -->
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script>
		function login_check(){
			const $id = $("#id");
			const $pw = $("#pw");
				if($id.val() == ""){
					alert("아이디를 입력하세요.");
					$id.focus();
					return false;
				}
				if($pw.val() == ""){
					alert("비밀번호를 입력하세요.")
					$pw.focus();
					return false;
				}
		}
	</script>

</html>