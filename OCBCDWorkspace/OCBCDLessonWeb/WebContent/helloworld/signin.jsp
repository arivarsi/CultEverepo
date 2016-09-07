<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Emerge -Home</title>
    <link rel="icon" type="image/png" href="images/emergeicon.png" />
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="https://ssl.gstatic.com/docs/script/css/add-ons.css">
   <style>
    .ThisLink{
           pointer-events: none;
           cursor: default;
    }
	.disabledbutton {
    pointer-events: none;
    opacity: 0.4;
		}
      </style>

</head>

<body>

    <!-- Navigation -->
    <nav style="font-size:20;font-family: Arial, Helvetica, sans-serif;" class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp"> <img src="images/logo.jpg" alt="" width="250" height="auto"> </a>
            </div>
            <br> <br>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="about.jsp">About</a>
                    </li>

                    <li>
                        <a href="contact.jsp">Contact</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Cultural Events <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="">Mariental</a>
                            </li>
                            <li>
                                <a href="">Gobabis</a>
                            </li>
                            <li>
                                <a href="">Windhoek</a>
                            </li>
                            <li>
                                <a href="">Walvis Bay</a>
                            </li>
                            <li>
                                <a href="">Keetmanshop</a>
                            </li>
                            <li>
                                <a href="">Oshakati</a>
                            </li>
                            <li>
                                <a href="">Tsumeb</a>
                            </li>
                        </ul>
                    </li>
                   
                    <li>
                        <a href="events.jsp">Upcoming Events</a>
                    </li>
                    <li id="elemID">
                        <a href="signin.jsp" id='elemID'>Sign in </a>
                    </li>
                    <c:if test='<%=request.getAttribute("greeting")!= null && !"".equals(request.getAttribute("greeting")) %>'>
                    <script>
					    $('#elemID').addClass('ThisLink');
					 </script>
                    <li>
                        <a href="signin.jsp">
                        <font color="red"><c:out value="${greeting}" /> : Sign out</font>
                        </a>
                    </li>
				</c:if>	

                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    
    <br>    <br> <br> 

      <div>
                            
           <!-- Include the Google CSS package -->
         	<form action="/OCBCDLessonWeb/HelloWorldEJBServlet">
                    <div class="control-group form-group">
                        <div class="controls">
                        <c:if test="{$not empty requestScope.error}">
                            <p class="help-block">Unexpected Error1 : <c:out value="${requestScope.error}" /></p>
                            </c:if>
                        </div>
                    </div>
				
					
				
				<div class="control-group form-group">
                        <div class="controls">
                           
                            <!--JSTL not playing nicely. If you can figure out why the line below does not work let me know.-->				
						<!--  c:if test='{$!empty greeting}'-->				
							 <c:if test='<%=request.getAttribute("signin")!= null && !"".equals(request.getAttribute("signin")) %>'>
							  <label>Success message:</label>
							 $("#mydiv").addClass("disabledbutton");
							      <p class="help-block"><font color="red"><c:out value="${signin}" /></font></p>
							</c:if>	
                            
                        </div>
                    </div>
					
				
				<h2>Submit your name and password for authentification</h2>
				<div id="mydiv">
                    <!-- Text input fields -->
                     <div class="control-group form-group">
                        <div class="controls">
                        Your name:    <input type="text" name="name" placeholder="Your name.."> 
                        </div>
                    </div>
                 <!-- Text input fields -->
                     <div class="control-group form-group">
                        <div class="controls">
                        	Your password:   <input type="password" name="password" placeholder="Your password"> 
                        </div>
                    </div>
				 <!-- Text input fields -->
                     <div class="control-group form-group">
                        <div class="controls">
							<input type="submit">
						 </div>
                    </div>
                    
                    </div>
			
		</form>
                    
                   
                    
      </div>

        <hr>
        <br>

        <!-- Footer -->
        <footer>
            <div class="container">
				<div class="row">
					
					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="simplenav">
							<a href="#">Home</a> | 
								<a href="">Events</a> |
								<a href="">Culture groups</a> |
								<a href="">Contact us</a> |
								<b><a href="">Sign up/Sign in</a></b>
							</p>
						</div>
					</div>

					<div class="col-md-6 widget">
						
                   
                    <p class="text-right">
                         <a href=""> Website by  &copy;Erasi Kasa</a>
                    </p>
                </div>
            </div>
            </div>
        </footer>

    <!-- /.container -->
    <script>
        $(document).ready(function() {
        
        $("#owl-demo").owlCarousel({
        
            autoPlay: 3000, //Set AutoPlay to 3 seconds
        
            items : 4,
            itemsDesktop : [1199,3],
            itemsDesktopSmall : [979,3]
        
        });
        
        });
         </script>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>
