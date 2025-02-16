<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }
      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      	body {
		  height: 100%;
		}
		body {
		  display: flex;
		  align-items: center;
		  padding-top: 40px;
		  padding-bottom: 40px;
		  background-color: #f5f5f5;
		}
		
		.form-signin {
		  width: 100%;
		  max-width: 330px;
		  padding: 15px;
		  margin: auto;
		}
		
		.form-signin .checkbox {
		  font-weight: 400;
		}
		
		.form-signin .form-floating:focus-within {
		  z-index: 2;
		}
		
		.form-signin input[type="email"] {
		  margin-bottom: -1px;
		  border-bottom-right-radius: 0;
		  border-bottom-left-radius: 0;
		}
		
		.form-signin input[type="password"] {
		  margin-bottom: 10px;
		  border-top-left-radius: 0;
		  border-top-right-radius: 0;
		}
    </style>

    <title>Please Login</title>
	</head>

<body class="text-center">
<main class="form-signin">
	  <form action="${pageContext.request.contextPath }/user/LoginAction.do" method="post" name="LoginForm">
	    <img class="mb-4" src="/mvc/img/user/Login.png" width="200" height="200" alt="">
	    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>
	
	    <div class="form-floating">
	      <c:choose>
	      		<c:when test="${cookie.remember.name eq null }">
	      			<input type="text" name="id" class="form-control" id="floatingInput" placeholder="Id">
	      		</c:when>
	      		<c:when test="${cookie.remember.name ne null }">
	      			<input type="text" name="id" class="form-control" value="${cookie.remember.value }" id="floatingInput" placeholder="Id">
	      		</c:when>
	      </c:choose>
	      <label for="floatingInput">ID</label>
	    </div>
	    <div class="form-floating">
	      <input type="password" name="pw" class="form-control" id="floatingPassword" placeholder="Password">
	      <label for="floatingPassword">Password</label>
	    </div>
		
	    <div class="checkbox mb-3">
	      <label>
	      	<c:choose>
	      		<c:when test="${cookie.remember.name eq null }">
	      			<input type="checkbox" name="remember" value="remember"> Remember me
	      		</c:when>
	      		<c:when test="${cookie.remember.name ne null }">
	      			<input type="checkbox" name="remember" value="remember" checked> Remember me
	      		</c:when>
	      	</c:choose>
	      </label>
	    </div>
	    <input type="button" value="Login" onclick="inputCheck()" class="w-100 btn btn-lg btn-primary">
	    <a href="${pageContext.request.contextPath }/user/Join.do">
	    	<button class="w-100 btn btn-lg btn-primary" type="button" style="margin-top:10px;">Sign up</button>
	    </a>
	    <p class="mt-5 mb-3 text-muted">&copy; made by hosun</p>
	  </form>
	</main>
	<script>
	    function inputCheck(){
	    if(document.LoginForm.id.value==""){
	        alert("아이디를 입력해 주세요.");
	        document.regForm.id.focus();
	        return;
	    }
	    if(document.LoginForm.pw.value==""){
	        alert("비밀번호를 입력해 주세요.");
	        document.regForm.pw.focus();
	        return;
	    }
	    
	    document.LoginForm.submit();
	}
    </script>
</body>
</html>