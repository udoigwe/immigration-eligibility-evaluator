$(function () {

    'use strict';

	$(document).ready(function($) {
        //remember me
        rememberMe();
        //login
        login();
        //register
        register();
    });

    function login()
    {
        $('#login-form').on('submit', function(e){
            e.preventDefault();
            var form = $(this);
            var email = $("#email").val();
            var fields = form.find('input.required, select.required');
            
            blockUI();

            for(var i=0;i<fields.length;i++)
            {
                if(fields[i].value === "")
                {
                    /*alert(fields[i].id)*/
                    unblockUI();
                    //showSimpleMessage("Attention", `${fields[i].name} is required`, "error");
                    alert(`${fields[i].name} is required`)
                    $('#'+fields[i].id).focus();
                    return false;
                }
            }
            
            if(!validateEmail(email))
            {
                //alert("All fields are required");
               //showSimpleMessage("Attention", "Please provide a valid email address", "error");
               alert("Please provide a valid email address")
               unblockUI();
               return false;
            }
            else
            {
                $.ajax({
                    type: 'POST',
                    url: API_URL_ROOT+'/login',
                    data: JSON.stringify(form.serializeObject()),
                    dataType: 'json',
                    contentType: 'application/json',
                    success: function(response)
                    {
                        var token = response.token; //generated access token from request
                        //var role = payloadClaim(token, "user_role"); //the user section from access token
                        //var redirectTo = role === 'Admin' ? '/admin/dashboard' : role === "Voter" ? '/voter/dashboard' : '/observer';
                        var redirectTo = '/dashboard';

                        setRememberMe(); //store login details to hardrive if any
                        sessionStorage.setItem('token', token); //set access token 

                        //redirect to the user's dashboard
                        window.location = redirectTo;
                    },
                    error: function(req, status, err)
                    {
                        //showSimpleMessage("Attention", "ERROR - "+req.status+" : "+req.responseText, "error");
                        alert(req.responseJSON.message);
                        unblockUI();
                    }
                });
            }
        });
    }

    function register()
    {
        $('#register-form').on('submit', function(e){
            e.preventDefault();
            var form = $(this);
            var email = form.find("#email").val();
            var password = form.find("#password").val();
            var repassword = form.find("#re-password").val();
            var fields = form.find('input.required, select.required, textarea.required');
            
            blockUI();

            for(var i=0; i < fields.length; i++)
            {
                if(fields[i].value == "")
                {
                    /*alert(fields[i].id)*/
                    unblockUI();
                    form.find('#'+fields[i].id).focus();
                    //showSimpleMessage("Attention", `${fields[i].name} is required`, "error");
                    alert(`${fields[i].name} is required`)
                    return false;
                }
            }
            
            if(!validateEmail(email))
            {
                //alert("All fields are required");
                unblockUI();
                //showSimpleMessage("Attention", "Please provide a valid email address", "error");
                alert("Please provide a valid email address")
                return false;
            }
            
            if(password !== repassword)
            {
                unblockUI();
                //showSimpleMessage("Attention", "Passwords don't match", "error");
                alert("Passwords don't match")
                return false;
            } 
            
            $.ajax({
                type: 'POST',
                url: `${API_URL_ROOT}/sign-up`,
                data: JSON.stringify(form.serializeObject()),
                dataType: 'json',
                contentType: 'application/json',
                success: function(response)
                {
                    unblockUI();
                    //showSimpleMessage("Success", response.message, "success");
                    form.get(0).reset();
                    window.location = '/sign-in';
                },
                error: function(req, status, err)
                {
                    //showSimpleMessage("Attention", "ERROR - "+req.status+" : "+req.responseText, "error");
                    alert(req.responseJSON.message)
                    unblockUI();
                }
            });
        });
    }
}); 