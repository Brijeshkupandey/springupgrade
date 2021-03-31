<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Person Page</title>
	<style type="text/css">
		form{
			position: absolute;
   		 	width: 200px;
    		height: 200px;
   	 		padding: 15px 25px 0 25px;
   			 margin-top: 15px;
    		cursor: default;
 
    		background-color: #141518;
 
    		-webkit-border-radius: 5px;
    		-moz-border-radius: 5px;
    	border-radius: 5px;
 
    	-webkit-box-shadow: 0px 1px 1px 0px rgba(255,255,255, .2), inset 0px 1px 1px 0px rgb(0,0,0);
    	-moz-box-shadow: 0px 1px 1px 0px rgba(255,255,255, .2), inset 0px 1px 1px 0px rgb(0,0,0);
   			 box-shadow: 0px 1px 1px 0px rgba(255,255,255, .2), inset 0px 1px 1px 0px rgb(0,0,0);
		
		},
		form:before {
    	position: absolute;
    	top: -12px;
    	left: 200px;
 
    	width: 200px;
    	height:200px;
    	content: '';
 
    	border-bottom: 10px solid #141517;
    border-right: 10px solid #141517;
    border-top: 10px solid transparent;
    border-left: 10px solid transparent;
}
	form h1{
	line-height: 40px;
    font-family: 'Myriad Pro', sans-serif;
    font-size: 22px;
    font-weight: normal;
    color: #e4e4e4;
	
	}
	form span{
	color: #686868;
    width: 160px;
 
    -webkit-box-shadow: inset 1px 1px 1px 0px rgba(255,255,255, .6);
    -moz-box-shadow: inset 1px 1px 1px 0px rgba(255,255,255, .6);
    box-shadow: inset 1px 1px 1px 0px rgba(255,255,255, .6);
 
    background: #989898;
    background: -moz-linear-gradient(top,  #ffffff 0%, #989898 100%);
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(100%,#989898));
    background: -webkit-linear-gradient(top,  #ffffff 0%,#989898 100%);
    background: -o-linear-gradient(top,  #ffffff 0%,#989898 100%);
    background: -ms-linear-gradient(top,  #ffffff 0%,#989898 100%);
    background: linear-gradient(top,  #ffffff 0%,#989898 100%);
     position: relative;
    margin-top: 15px;
    float: left;
	}
	form input[type=text],
form input[type=password],

form input[type=submit]{
line-height: 14px;
    margin: 10px 0;
    padding: 6px 15px;
    border: 0;
    outline: none;
 
    font-family: Helvetica, sans-serif;
    font-size: 12px;
    font-weight: bold;
    text-shadow: 0px 1px 1px rgba(255,255,255, .2);
 
    -webkit-border-radius: 26px;
    -moz-border-radius: 26px;
    border-radius: 26px;
 
    -webkit-transition: all .15s ease-in-out;
    -moz-transition: all .15s ease-in-out;
    -o-transition: all .15s ease-in-out;
    transition: all .15s ease-in-out;
    
    float: right;
    cursor: pointer;
 
    color: #445b0f;
 
    -webkit-box-shadow: inset 1px 1px 1px 0px rgba(255,255,255, .45), 0px 1px 1px 0px rgba(0,0,0, .3);
    -moz-box-shadow: inset 1px 1px 1px 0px rgba(255,255,255, .45), 0px 1px 1px 0px rgba(0,0,0, .3);
    box-shadow: inset 1px 1px 1px 0px rgba(255,255,255, .45), 0px 1px 1px 0px rgba(0,0,0, .3);
    

}
	form label {
    margin: 0;
    padding: 0;
    border: 0;
    outline: 0;
    position: absolute;
    top: 1px;
    left: 25px;
    font-family: sans-serif;
    font-weight: bold;
    font-size: 12px;
    color: #e4e4e4;
	}
	form input[type=password]:hover {
    -webkit-box-shadow: inset 1px 1px 1px 0px rgba(255,255,255, .6), 0px 0px 5px rgba(255,255,255, .5);
    -moz-box-shadow: inset 1px 1px 1px 0px rgba(255,255,255, .6), 0px 0px 5px rgba(255,255,255, .5);
    box-shadow: inset 1px 1px 1px 0px rgba(255,255,255, .6), 0px 0px 5px rgba(255,255,255, .5);
},
form  input[type=text]:focus,
form input[type=password]:focus {
    background: #e1e1e1;
    background: -moz-linear-gradient(top,  #ffffff 0%, #e1e1e1 100%);
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(100%,#e1e1e1));
    background: -webkit-linear-gradient(top,  #ffffff 0%,#e1e1e1 100%);
    background: -o-linear-gradient(top,  #ffffff 0%,#e1e1e1 100%);
    background: -ms-linear-gradient(top,  #ffffff 0%,#e1e1e1 100%);
    background: linear-gradient(top,  #ffffff 0%,#e1e1e1 100%);
}

form input[type=submit]:hover {
    -webkit-box-shadow: inset 1px 1px 3px 0px rgba(255,255,255, .8), 0px 1px 1px 0px rgba(0,0,0, .6);
    -moz-box-shadow: inset 1px 1px 3px 0px rgba(255,255,255, .8), 0px 1px 1px 0px rgba(0,0,0, .6);
    box-shadow: inset 1px 1px 3px 0px rgba(255,255,255, .8), 0px 1px 1px 0px rgba(0,0,0, .6);
}
 
form input[type=submit]:active {
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;
}
form input[type=submit],
js.form span.checked:before {
    background: #a5cd4e;
    background: -moz-linear-gradient(top,  #a5cd4e 0%, #6b8f1a 100%);
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#a5cd4e), color-stop(100%,#6b8f1a));
    background: -webkit-linear-gradient(top,  #a5cd4e 0%,#6b8f1a 100%);
    background: -o-linear-gradient(top,  #a5cd4e 0%,#6b8f1a 100%);
    background: -ms-linear-gradient(top,  #a5cd4e 0%,#6b8f1a 100%);
    background: linear-gradient(top,  #a5cd4e 0%,#6b8f1a 100%);
}
.js.form input[type=checkbox] {
    position: fixed;
    left: -9999px;
}
.js.form span {
    width: 16px;
    height: 16px;
    cursor: pointer;
 
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
}
.js.form span.checked:before {
    content: '';
    position: absolute;
    top: 4px;
    left: 4px;
    width: 8px;
    height: 8px;
 
    -webkit-box-shadow: 0px 1px 1px 0px rgba(255,255,255, .45), inset 0px 1px 1px 0px rgba(0,0,0, .3);
    -moz-box-shadow: 0px 1px 1px 0px rgba(255,255,255, .45), inset 0px 1px 1px 0px rgba(0,0,0, .3);
    box-shadow: 0px 1px 1px 0px rgba(255,255,255, .45), inset 0px 1px 1px 0px rgba(0,0,0, .3);
}
form label {
    position: absolute;
    top: 1px;
    left: 25px;
    font-family: sans-serif;
    font-weight: bold;
    font-size: 12px;
    color: #e4e4e4;
}
	</style>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script>
$(document).ready(function() {
 
    // Check if JavaScript is enabled
    $('body').addClass('js');
 
    // Make the checkbox checked on load
    $('.form span').addClass('checked').children('input').attr('checked', true);
 
    // Click function
    $('.form span').on('click', function() {
 
        if ($(this).children('input').attr('checked')) {
            $(this).children('input').attr('checked', false);
            $(this).removeClass('checked');
        }
 
        else {
            $(this).children('input').attr('checked', true);
            $(this).addClass('checked');
        }
 
    });
 
});
</script>
<div>
 
    <h1>Login Form</h1>
 
    <form name="login-form" action="#" width="300" position="center">
 
        <input type="text" name="username" placeholder="username">
 
        <input type="password" name="password" placeholder="password">
 
        <span>
            <input type="checkbox" name="checkbox">
            <label for="checkbox">remember</label>
        </span>
 
        <input type="submit" value="log in">
 
    </form>
 
</div>
</body>

</html>