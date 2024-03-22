$(function () {

    'use strict';

    $(document).ready(function($) {
        //verify param
        validatePage();
        //password recovery
        passwordRecovery();
    });

    function validatePage()
    {
        const email = getQueryParam("email");
        const salt = getQueryParam("salt");
        
        if(!email || !salt)
        {
            history.back();
        }
    }

    function passwordRecovery()
    {
        $('#password-reset-form').on('submit', function(e){
            e.preventDefault();

            var form = $(this);
            var email = getQueryParam("email");
            var salt = getQueryParam("salt");
            var password = form.find("#password").val();
            var repassword = form.find("#re-password").val();
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

            if(password !== repassword)
            {
                unblockUI();
                alert('passwords dont match');
                return false;
            }

            var formData = { email, salt, password };

            $.ajax({
                type: 'POST',
                url: `${API_URL_ROOT}/change-password`,
                data: JSON.stringify(formData),
                dataType: 'json',
                contentType: 'application/json',
                success: function(response)
                {
                    unblockUI();
                    alert(response.message);
                    window.location = `/sign-in`;
                },
                error: function(req, status, err)
                {
                    alert(req.responseJSON.message);
                    form.get(0).reset();
                    unblockUI();
                }
            })
        });
    }
})