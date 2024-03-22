$(function () {

    'use strict';

    let token = sessionStorage.getItem('token');

	$(document).ready(function($) {
        //profile update
        submitProfileUpdate();
    });

    function submitProfileUpdate()
    {
        $('#profile-update-form').on('submit', function(e){
            e.preventDefault();
            var form = $(this);
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
            
            $.ajax({
                type: 'POST',
                url: API_URL_ROOT+'/profile-update',
                data: JSON.stringify(form.serializeObject()),
                dataType: 'json',
                contentType: 'application/json',
                headers:{'x-access-token':token},
                success: function(response)
                {
                    var tkn = response.token; //generated access token from request
                    //remove existing token from local storage
                    sessionStorage.removeItem('token');
                    //save the current access token
                    sessionStorage.setItem('token', tkn); //set access token 

                    //reload current page
                    window.location.reload();
                },
                error: function(req, status, err)
                {
                    //showSimpleMessage("Attention", "ERROR - "+req.status+" : "+req.responseText, "error");
                    alert(req.responseJSON.message);
                    unblockUI();
                }
            });
        });
    }
}); 