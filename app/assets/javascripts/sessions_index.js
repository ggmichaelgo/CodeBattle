var controller;
var username = '';
var password = '';

function show_login()
{
	$('#login, #main').animate({
		opacity: 1.00,
		top: '-=396'
	}, 500, function() {
		
	});
}

function hide_login()
{
	$('#login, #main').animate({
		opacity: 1.00,
		top: '+=396'
	}, 500, function() {
	});
}

function login_fail()
{	
	controller.scrollToBottom();
	password = '';
	username = '';
	controller.reset();
	setTimeout(function(){
		controller.message('Login Failed...');
	}, 1000);
}

function login(username, password) {
	var data = {
		remote: true, commit: "Sign in", utf8: "✓",
		user: 
		{
			remember_me: 1, 
			password: password, 
			username: username
		}
	};
	$.ajax({
		type: 'POST',
		url: '/users/sign_in', 
		data: data, 
		success: function(resp) {
			console.log(resp);
			if(resp.success)
				location = '/';
			else 
				login_fail();
		}
	});	
}

function ajaxSetup()
{
	$.ajaxSetup({
		beforeSend: function(xhr){
			var token = $('meta[name="csrf-token"]').attr('content');
			if(token)
				xhr.setRequestHeader('X-CSRF-Token', token);
		}
	});
}

$(document).ready(function(){
	ajaxSetup();
	var consoleCancelFlag;
	var login_console = $('#console');
	controller = login_console.console({
		promptLabel: 'Login> ',
		commandValidate:function(line){
			if (line == "") return false;
			else return true;
		},
		commandHandle:function(line,report){
			setTimeout(function() {
				if(!consoleCancelFlag)
				{
					if(username == '')
					{
						username = line;
						report('Type your password');						
					}
					else if(password == '')
					{
						password = line;
						login(username, password);
						report('please wait....');
					}
					else
					{
						report('Error.... Please refresh the page');
					}			
				}					
				else {
					report([{msg:"User interrupt",
						className:"jquery-console-message-error"}]);
					consoleCancelFlag = false;
				}
			},100);
		},
		cancelHandle:function() {
			consoleCancelFlag = true;
		},
		animateScroll:true,
		promptHistory:true,
		welcomeMessage: 'Welcome to CodeBattle\nVersion 1.0\nCopyright (c) 2013 Michael Go\n\nType your User name'
	});
});