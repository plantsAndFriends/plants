<%-- 
    Document   : signup
    Created on : 31-mar-2017, 17:46:17
    Author     : Adria Viñas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">

    </head>
    <body>
        <jsp:setProperty  name="bean_signup" property="*" />
        <div class="container">
            
            <h1 class="text-center mt-5 mb-5">Sign Up</h1>
                               
            
            <% if(request.getParameter("name") == null) {%>            
            <form class="form-horizontal" method="post">
                <div class="form-group">                    
                    <div class="col-md-4 offset-4">
                        <input type="text" class="form-control" name="username" placeholder="Your username"/>
                    </div>
                </div>
                <div class="form-group">                    
                    <div class="col-md-4 offset-4">
                        <input type="text" class="form-control" name="email" placeholder="Your email"/>
                    </div>
                </div>
                <div class="form-group">                    
                    <div class="col-md-4 offset-4">
                        <input type="password" class="form-control" name="password" placeholder="Your password"/>
                    </div>
                </div>   
                
                <div class="form-group mt-5">
                    <div class="col-md-4 offset-4">
                        <button class="btn btn-success" name="send">Sign Up</button>
                    </div>                    
                </div>
            </form> 
            <%}else{%>
            <jsp:forward page="ControladorBeanSignUp?accio=insertBeanSignUp"/>
            <%}%>
        </div>        
        
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    </body>
</html>
