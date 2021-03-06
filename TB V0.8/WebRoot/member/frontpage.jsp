<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> 

	<title>Welcome to the T-BiX</title>

	<meta name="description" content="Custom Drop-Down List Styling with CSS3" />
	<meta name="author" content="Codrops" />
	
	<link rel="stylesheet" type="text/css" href="../css/styleindex.css" />
	<link rel="stylesheet" type="text/css" href="../css/styleradio.css" />
	<link href="../css/fonts.css" rel='stylesheet' type='text/css'>

	<script type="text/javascript" src="../js/modernizr.custom.79639.js"></script> 
	<noscript><link rel="stylesheet" type="text/css" href="css/noJS.css" /></noscript>
	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<script type="text/javascript">

		var dropDownData = {
			'baby': {
				'baby1': {}, 
				'baby2': {},
				'baby3': {}
			},
			'baby1': {
				'baby11': {}, 
				'baby12': {},
				'baby13': {}
			},
			'baby2': {
				'baby21': {}, 
				'baby22': {},
				'baby23': {}
			}
		};
		var onDropDownSelect1 = function(key) {					
			var dropDown2 = new DropDown( $('#dropDown2'), dropDownData[key] );
		}

		function DropDown(el, items) {
			this.dd = el;
			this.items = items;
			el.children('ul').empty();
			if (items) {
				for (var key in items) {							
					el.children('ul').append('<li><a href="#" onclick="onDropDownSelect1(\''+key+'\');">' + key+ '</a></li>');
				};	
			}

			this.initEvents();
		}
		DropDown.prototype = {
			initEvents : function() {
				var obj = this;
				obj.dd.on('click', function(event) {
					$(this).toggleClass('active');
					event.stopPropagation();
				});	
			}
		}

		$(function() {

			var dropDown1 = new DropDown( $('#dropDown1'), dropDownData);


			$(document).click(function() {
					// all dropdowns
					$('.wrapper-dropdown-5').removeClass('active');
				});

		});

	</script>
	<style type="text/css">
body {
				background: #ffffff;
			}


		.tbix_dropdown {
			position: relative;
			width: 200px;
			margin: 0 auto;
			padding: 12px 15px;
			background: #fff;
			border-radius: 5px;
			box-shadow: 0 1px 0 rgba(0,0,0,0.2);
			cursor: pointer;
			outline: none;
			-webkit-transition: all 0.3s ease-out;
			-moz-transition: all 0.3s ease-out;
			-ms-transition: all 0.3s ease-out;
			-o-transition: all 0.3s ease-out;
			transition: all 0.3s ease-out;
		}
		.tbix_dropdown:after { /* Little arrow */
			content: "";
			width: 0;
			height: 0;
			position: absolute;
			top: 50%;
			right: 15px;
			margin-top: -3px;
			border-width: 6px 6px 0 6px;
			border-style: solid;
			border-color: #4cbeff transparent;
		}

		.tbix_dropdown > ul {
			/* Size & position */
			position: absolute;
			top: 100%;
			left: 0;
			right: 0;

			/* Styles */
			background: #fff;
			border-radius: 0 0 5px 5px;
			border: 1px solid rgba(0,0,0,0.2);
			border-top: none;
			border-bottom: none;
			list-style: none;
			-webkit-transition: all 0.3s ease-out;
			-moz-transition: all 0.3s ease-out;
			-ms-transition: all 0.3s ease-out;
			-o-transition: all 0.3s ease-out;
			transition: all 0.3s ease-out;

			/* Hiding */
			max-height: 0;
			overflow: hidden;
		}

		.tbix_dropdown > ul > li {
			padding: 0 10px ;
		}

		.tbix_dropdown > ul > li a {
			display: block;
			text-decoration: none;
			color: #333;
			padding: 10px 0;
			transition: all 0.3s ease-out;
			border-bottom: 1px solid #e6e8ea;
		}

		.tbix_dropdown > ul > li:last-of-type a {
			border: none;
		}

		.tbix_dropdown > ul > li i {
			margin-right: 5px;
			color: inherit;
			vertical-align: middle;
		}

		/* Hover state */

		.tbix_dropdown > ul >:hover a {
			color: #57a9d9;
		}

		/* Active state */

		.tbix_dropdown.active {
			border-radius: 5px 5px 0 0;
			background: #4cbeff;
			box-shadow: none;
			border-bottom: none;
			color: white;
		}

		.tbix_dropdown.active:after {
			border-color: #82d1ff transparent;
		}

		.tbix_dropdown.active > ul {
			border-bottom: 1px solid rgba(0,0,0,0.2);
			max-height: 400px;
		}

		.tbix_footer {
			width: 100vw; 
			height: 30vh; 
			padding-left: 10vw;			
		}

		.tbix_footer__item {
			float: left; 
			margin-left: 10px;
			height: 100%; 			
			width: 10vw;			
		}

		.tbix_footer__item__first {
			margin-left: 0;			
		}
	</style>

</head>
<body>
	<div style="position: relative; width: 100vw; height: 25vh;">
		<div class="language" >
			<ul>
				<li class="link"><a href="">German</a></li>
				<li class="link"><a href="">Italian</a></li>
				<li class="link"><a href="">English</a></li>
			</ul>
	  </div>

		<div class="autorization">
			<ul>
				<li class="link" id="signin"><a href="../login.jsp">Sign in</a></li>
				<li class="link" id="login"><a href="../member/register.jsp">Sign up</a></li>
			</ul>
	  </div>
	</div>
	

	<!-- <div class="center"> -->
	<div style="height: 45vh; width: 100vw;">
		<div class="what">
			<p>What are you looking for?</p>
		</div>
		<div style="height: 80px; padding-left: 25vw;">
			<div style="height: 100%; float: left; position: relative; width: 10vw;">
				<div style="position: absolute; bottom: 50%; margin-bottom: 6px;">
					<input type="radio" id="r1" name="rr" value="services" checked="checked"/>
					<label for="r1"><span></span>services</label>
				</div>
				<div style="position: absolute; top: 50%; margin-top: 6px;">
					<p><input type="radio" id="r2" name="rr" value="goods"/><label for="r2"><span></span>goods</label>
					</p>
				</div>
			</div>			
			<div style="height: 100%; float: left; width: 5vw;">				
			</div>
			<div style="height: 100%; float: left; position: relative; width: 20vw;">

				
				


	
		<form id="tfnewsearch" method="get" action="">
		        <input type="text" class="tftextinput" name="q" size="30" maxlength="150" placeholder="specify category and city">

		</form>
	    <div class="tfclear"></div>
	
		</div>
				
				<div style="float: left; position: relative; cursor: pointer; top: 50%; margin-top: -22px; margin-left: 10px; width: 150px; height: 44px; color: #ffffff; padding: 12px 5px; border-radius: 5px; background: #96c93c; text-align: center;" value="search" onclick="alert('Not implemented');">SEARCH</div>
			</div>	
		</div>		
	</div>	

	<div class="tbix_footer">
		<div class="tbix_footer__item tbix_footer__item__first">
			<a href="http://sfdj14.inf.unibz.it:8080/about.html" style="height: 100%; width: 100%;">
				<img src="../image/about.png" style="position: relative; left: 50%; margin-left: -75px; "/>
				<div style="font-size: 200%;">About Project </div>
				<div>Everything you would like to know about time bank </div>
			</a>
		</div>

		

		<div class="tbix_footer__item">
			<a href="http://sfdj14.inf.unibz.it:8080/news.html" style="height: 100%; width: 100%;">
				<img src="../image/news.png" style="position: relative; left: 50%; margin-left: -75px; "/>
				<div style="font-size: 200%;">News </div>
				<div>Partecipate in time bank meetings and earn hours-credits </div>
			</a>
		</div>


		<div class="tbix_footer__item">
			<a href="http://sfdj14.inf.unibz.it:8080/faq.html" style="height: 100%; width: 100%;">
				<img src="../image/faq.png" style="position: relative; left: 50%; margin-left: -75px;"/>
				<div style="font-size: 200%;">FAQ </div>
				<div>Here you will find all answers on your questions </div>
			</a>
		</div>
		
		<div class="tbix_footer__item">
			<a href="http://sfdj14.inf.unibz.it:8080/partners.html" style="height: 100%; width: 100%;">
				<img src="../image/partners.png" style="position: relative; left: 50%; margin-left: -75px;"/>
				<div style="font-size: 200%;">Partners </div>
				<div>Contacts of our partners </div>
			</a>
		</div>
	
</div>

</body>
</html>
