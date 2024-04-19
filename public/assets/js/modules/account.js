$(function () {

    'use strict';

    let token = sessionStorage.getItem('token');

	$(document).ready(function($) {
        //load user details
        displayUserDetails();
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

    function displayUserDetails()
    {
        var gender = payloadClaim(token, 'gender');
        var dob = payloadClaim(token, 'date_of_birth');
        var nationality = payloadClaim(token, 'nationality');
        var maritalStatus = payloadClaim(token, 'marital_status');
        var educationalLevel = payloadClaim(token, 'education_level');
        var yearsOfExperience = payloadClaim(token, 'years_of_experience');
        var languageProficiency = payloadClaim(token, 'language_proficiency');

        $('.gender').text(gender);
        $('.date_of_birth').text(dob ? moment(dob).format('MMMM Do YYYY') : null);
        $('.nationality').text(nationality);
        $('.marital-status').text(maritalStatus);
        $('.educational-level').text(educationalLevel);
        $('.years-of-experience').text(yearsOfExperience);
        $('.language-proficiency').text(languageProficiency);
    }
}); 