<%@ page language="java" contentType="text/html; charset=UTF-8"
       pageEncoding="UTF-8"%>
   <!DOCTYPE html>
   <html lang="ko">
   
   <head>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>회원가입 화면 샘플 - Bootstrap</title>
   
     <!-- Bootstrap CSS -->
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
       integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
   <!-- Jquery 사용문-->
   <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
     <style>
       body {
         min-height: 100vh;
   
         background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
         background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
         background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
         background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
         background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
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
         box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
       }
          .id_input_re_1{
      width:100%;
      height:100%;
      border:none;
      font-size:15px;
      display: none;
      color: green;
   }
          .id_input_re_2{
      width:100%;
      height:100%;
      border:none;
      font-size:15px;
      display: none;
      color: red;
   }
       
       .pwck_input_re_1{
      width:100%;
      height:100%;
      border:none;
      font-size:15px;
      display: none;
      color: green;
   }
       .pwck_input_re_2{
      width:100%;
      height:100%;
      border:none;
      font-size:15px;
      display: none;
      color: red;
   }
   
     </style>
   </head>
   
   <body>
     <div class="container">
       <div class="input-form-backgroud row">
         <div class="input-form col-md-12 mx-auto">
           <h4 class="mb-3 text-center" >회원가입1</h4>
           <form class="validation-form join_form" id="join_form" method="POST" novalidate >
             <div class="row">
               <div class="col-md-12 mb-3">
                 <label for="id">아이디</label>
                 <input type="text" class="id_input form-control" name="id" id="id" placeholder="" value="" required>
                             <span class="id_input_re_1">사용 가능한 아이디입니다.</span>
               <span class="id_input_re_2">아이디가 이미 존재합니다.</span>   
                 <div class="invalid-feedback">
                   이름을 입력해주세요.
                 </div>
               </div>
    
          </div>
     <div class="mb-3">
               <label for="password">비밀번호1</label>
               <input type="password" class="pw_input form-control" id="passeord" placeholder="비밀번호를 입력해주세요" required>
               <div class="invalid-feedback">
     비밀번호를 입력해주세요.
               </div>
             </div>
               <div class="mb-3">
               <label for="password">비밀번호2</label>
               <input type="password" class="pwck_input form-control" id="passeord" placeholder="비밀번호를 다시 입력해주세요" required>
              
               <span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
               <span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
               <div class="invalid-feedback">
           비밀번호2를 입력해주세요.
               </div>
             </div>
             
               <div class="mb-3">
                           <label for="name">이름</label>
                 <input type="text" class="user_input form-control" id="name" name="name" placeholder="" value="" required>
                 
                 <div class="invalid-feedback">
                   이름을 입력해주세요.
                 </div>
               </div>
             <div class="mb-3">
               <label for="email">이메일</label>
               <input type="email" name="email" class="mail_input form-control" id="email" placeholder="you@example.com" required>
               <div class="invalid-feedback">
                 이메일을 입력해주세요.
               </div>
             </div>
   
             <div class="mb-3">
               <label for="pss">주소</label>
               <input type="text" class="address_input_3 form-control" id="address" placeholder="서울특별시 강남구" >
               <div class="invalid-feedback">
                 주소를 입력해주세요.
               </div>
             </div>
   
             <div class="mb-3">
               <label for="address2">상세주소<span class="text-muted">&nbsp;(필수 아님)</span></label>
               <input type="text" class="form-control" id="address2" placeholder="상세주소를 입력해주세요.">
             </div>
   
            
             <!-- <hr class="mb-4">
             <div class="custom-control custom-checkbox">
               <input type="checkbox" class="custom-control-input" id="aggrement" required>
               <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
             </div> -->
             <div class="mb-4"></div>
             <button class="btn btn-dark btn-lg btn-block join_button" type="submit">가입 완료</button>
           </form>
         </div>
       </div>
       <footer class="my-3 text-center text-small">
         <p class="mb-1">&copy; 2021 YD</p>
       </footer>
     </div>
   
     <script>
     var idCheck = false;         // 아이디
     var idckCheck = false;         // 아이디 중복 검사
     var pwCheck = false;         // 비번
     var pwckCheck = false;         // 비번 확인
     var pwckcorCheck = false;      // 비번 확인 일치 확인
     var nameCheck = false;         // 이름
     var mailCheck = false;         // 이메일
     var mailnumCheck = false;      // 이메일 인증번호 확인
     var addressCheck = false; //주소 확인
     var requiredCheck = false;    //필수입력사항 확인
    
     $(".join_button").click(function(){
      //이름 검사
         var id = $('.id_input').val();             // id 입력란
         var pw = $('.pw_input').val();            // 비밀번호 입력란
         var pwck = $('.pwck_input').val();   
         var name = $('.user_input').val();         // 이름 입력란
         var mail = $('.mail_input').val();         // 이메일 입력란
         var addr = $('.address_input_3').val();   
               
         //이름 검사
         if(id == ""){
            $('.id_input').css('display','block');
            idCheck = false;
         }else{
            $('.id_input').css('display', 'none');
            idCheck = true;
         }        
   
         if(name == ""){
            $('.user_input').css('display','block');
            nameCheck = false;
         }else{
            $('.user_input').css('display', 'none');
            nameCheck = true;
         }
         if(pw == ""){
            $('.final_pw_ck').css('display','block');
            pwCheck = false;
         }else{
            $('.final_pw_ck').css('display', 'none');
            pwCheck = true;
         }
         /* 비밀번호 확인 유효성 검사 */
         if(pwck == ""){
            $('.final_pwck_ck').css('display','block');
            pwckCheck = false;
         }else{
            $('.final_pwck_ck').css('display', 'none');
            pwckCheck = true;
         }
         if(mail == ""){
            $('.final_pwck_ck').css('display','block');
            mailCheck = false;
         }else{
            $('.final_pwck_ck').css('display', 'none');
            mailCheck = true;
         }
      
            
            
      if(nameCheck&&idCheck&&pwCheck&&pwckCheck&&mailCheck ){
            //데이터 전송
         alert("submit");
         $("#join_form").attr("action", "${pageContext.request.contextPath}/signUp/join");
         $("#join_form").submit();         
         alert('3');
      }else{
           //입력 사항 체크
            const forms = document.getElementsByClassName('validation-form');
               Array.prototype.filter.call(forms, (form) => {
              form.addEventListener('submit', function (event) {
                if (form.checkValidity() === false) {
                  event.preventDefault();
                  event.stopPropagation();
                }
                form.classList.add('was-validated');
              }, false);
            });
      }
     });
//--------------------------------------------------------------------------------------------
          
          //아이디 중복검사
     $('.id_input').on("propertychange change keyup paste input", function(){
       
        /* console.log("keyup 테스트"); */
        
        // .id_input에 입력되는 값
        var memberId = $('.id_input').val();
     
       
         /*   alert(memberId); */
        
        // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
        var data = {memberId : memberId}            
     
        $.ajax({
           type : "get",
           url : "${pageContext.request.contextPath}/signUp/UserIdChk",
           data : data,
           success : function(result){
           /* 사용가능한 아이디 */
              if(result == '1' || memberId.length<4){  
                 /* 사용 불~~~~~ 가능한 아이디 */
                 /*     alert(memberId);  */
                 $('.id_input_re_2').css("display","inline-block");
                 $('.id_input_re_1').css("display", "none");
                 idckCheck = false;
              
              } else {              
                 //가능
                 $('.id_input_re_1').css("display","inline-block");
                 //불가능
                 $('.id_input_re_2').css("display", "none");   
                 idckCheck = true;
              }   
           }// success 종료
        }); // ajax 종료   
   
     });// function 종료
   //--------------------------------------------------------------------------------------------
             
     /* 비밀번호 확인 일치 유효성 검사 */
   
     $('.pwck_input').on("propertychange change keyup paste input", function(){
        
        var pw = $('.pw_input').val();
        var pwck = $('.pwck_input').val();
        $('.final_pwck_ck').css('display', 'none');
        
        if(pw == pwck){
           $('.pwck_input_re_1').css('display','block');
           $('.pwck_input_re_2').css('display','none');
           pwckcorCheck = true;
        }else{
           $('.pwck_input_re_1').css('display','none');
           $('.pwck_input_re_2').css('display','block');
           pwckcorCheck = false;
        }
        
        
     });
   //--------------------------------------------------------------------------------------------
   
          
          
          
          
          
          

     
     
     
     
     
     
     
     
     

     
     
    
     </script>
   </body>
   
   </html>