<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
    <main>
        <!-- Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider slider-height2 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>Login</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero Area End-->
        <!--================login_part Area =================-->
        <section class="login_part section_padding ">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-6">
                        <div class="login_part_text text-center">
                            <div class="login_part_text_iner">
                                <h2>New to our Shop?</h2>
                                <p>There are advances being made in science and technology
                                    everyday, and a good example of this is the</p>
                                <a href="/hp/signUp" class="btn_3">Create an Account</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="login_part_form">
                            <div class="login_part_form_iner" style="padding-top:50px;" align="center">
                                <h3>Welcome Back ! <br>
                                    Please Sign in now</h3>
                                    <div class="col-md-12 form-group p_star">
                                        <input type="text" class="form-control" id="user_id" name="user_id" value=""
                                            placeholder="Id">
                                    </div>
                                    
                                    <div class="col-md-12 form-group p_star">
                                        <input type="password" class="form-control" id="user_pw" name="user_pw" value=""
                                            placeholder="Password">
                                    </div>
                                    <div class="col-md-12 form-group p_star" id="check">
                                    </div>
                                    
                                    <div class="col-md-12 form-group">
                                        <div class="creat_account d-flex align-items-center">
                                            <input type="checkbox" id="auto-login" name="auto-login">
                                            <label for="f-option">Remember me</label>
                                        </div>
                                        <button type="submit" value="submit" class="btn_3" id="login-btn">
                                            log in
                                        </button>
                                        <a class="lost_pass" href="#">forget password?</a>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================login_part end =================-->
    </main>
   <jsp:include page="/WEB-INF/views/include/footer.jsp" />

</body>

<script>

$(function(){
	
	const getIdCheck= RegExp(/^[a-zA-Z0-9]{4,14}$/);
	const getPwCheck= RegExp(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
	

	
	/*
	
	//ID 입력값 검증.
	$('#user_id').on('keyup', function() {
		
		//아이디 유효성검사
		if(!getIdCheck.test($("#user_id").val())){
			chk1 = false;
		} else {
			chk1 = true;
		}
	});
	
	//패스워드 입력값 검증.
	$('#user_pw').on('keyup', function() {
		//비밀번호 공백 확인
		if($("#user_pw").val() === ""){
			chk2 = false;
		}		         
		//비밀번호 유효성검사
		else if(!getPwCheck.test($("#user_pw").val()) || $("#user_pw").val().length < 8){
			chk2 = false;
		} else {
			chk2 = true;
		}
		
	});
	
	*/
	
	//엔터키 입력 이벤트
	$("#user_pw").keydown(function (key) {
		 
        if(key.keyCode == 13){//키가 13이면 실행 (엔터는 13)
        	$("#login-btn").click();
        }
 
    });
	
	
	//로그인 버튼 눌렀을때
	$("#login-btn").click(function(){
		//if(chk1 && chk2){
			const id = $("#user_id").val();
			const pw = $("#user_pw").val();
			//is()함수는 상태여부를 판단하여 논리값을 리턴합니다
			const autoLogin = $("#auto-login").is(":checked");

			console.log("auto : " + autoLogin);
			
			
			const userInfo = {
					user_id : id,
					user_pw : pw,
					autoLogin : autoLogin
			};
			
			$.ajax({
				type : "POST",
				url : "/user/loginCheck",
				/*
				header : {
					"Content-Type": "application/json"
				},
				*/
				contentType: "application/json; charset=UTF-8", 
				data : JSON.stringify(userInfo),
				dataType : "text",
				success : function(data){
					console.log("result : " + data);
					if(data === "idFail"){
						$('#check').html('<b style="font-size:14px;color:red;">[등록되지 않은 아이디입니다]</b>');
						$('#user_pw').val("");
						$('#user_id').focus();
						chk = false;
					}else if(data === "pwFail"){
						$('#check').html('<b style="font-size:14px;color:red;">[비밀번호가 다릅니다]</b>');
						$('#user_pw').val("");
						$('#user_pw').focus();
						chk = false;
					}else if(data === "loginSuccess"){
						self.location="/hp/home";
					}
				}
			
			});//ajax end
			
		//}else{
			//alert("입력정보를 다시 확인하세요");
		//}
		
		
		
		
		
	});//로그인 버튼 end
	

	
	
	
});//jquery end


	//게시판 글쓰기 로그인 필요
	const msg = "${msg}";
	if(msg == "not-login"){
		alert("로그인이 필요한 서비스입니다.");
	}


</script>


    
</html>