<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  	
    <form action="cookiecontrol" method="post">
        <label for="uname"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="uname" required>

        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw" required>
        
        <button type="submit">Login</button>
        <label>
          <input type="checkbox" checked="checked" name="remember"> Remember me
        </label>
      </form>
      

</body>
</html>

<%	
//eğer cookie zaten kaydedildiyse direk olarak giriş yap
	Cookie[] cookies = null;    		
	cookies = request.getCookies();
	
	if (cookies != null ){
		if(cookies.length > 1){
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("welcomePages.jsp");
			requestDispatcher.forward(request, response); 
		}
	} 
	

%>


















