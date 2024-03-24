$(function () {

    'use strict';

    let token = sessionStorage.getItem('token');

	$(document).ready(function($) {
        //reset password
        resetPassword();
    });

    function resetPassword()
    {
        $('#reset-form').on('submit', function(e){
            e.preventDefault();
            var form = $(this);
            var newPass = $("#new_password").val();
            var confirmPass = $("#re_password").val();
            var fields = form.find('input.required, select.required');
            
            blockUI();

            for(var i=0;i<fields.length;i++)
            {
                if(fields[i].value === "")
                {
                    /*alert(fields[i].id)*/
                    unblockUI();
                    showSimpleMessage("Attention", `${fields[i].name} is required`, "error");
                    //alert(`${fields[i].name} is required`)
                    $('#'+fields[i].id).focus();
                    return false;
                }
            }
            
            if(confirmPass !== newPass)
            {
               //alert("Passwords do not match")
               showSimpleMessage("Attention", "Passwords don't match", "error");
               unblockUI();
               return false;
            }
    
            $.ajax({
                type: 'POST',
                url: API_URL_ROOT+'/reset-password',
                data: JSON.stringify(form.serializeObject()),
                dataType: 'json',
                contentType: 'application/json',
                headers:{'x-access-token':token},
                success: function(response)
                {
                    form.get(0).reset();
                    //alert(response.message);
                    showSimpleMessage("Success", response.message, "success");
                    unblockUI();
                },
                error: function(req, status, err)
                {
                    //alert(req.responseJSON.message);
                    showSimpleMessage("Attention", req.responseJSON.message, "error");
                    unblockUI();
                }
            });
        });
    }
}); 