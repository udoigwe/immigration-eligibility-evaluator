$(function () {

    'use strict';

    $(document).ready(function($) {
        //verify param
        validatePage();
        //verify Account
        verifyAccount();
        //resend OTP
        resentOTP();
    });

    function validatePage()
    {
        const email = getQueryParam("email");
        
        if(!email)
        {
            history.back();
        }
    }

    function verifyAccount()
    {
        $('#login-form').on('submit', function(e){
            e.preventDefault();

            var form = $(this);
            var email = getQueryParam("email");
            var otp = form.find("#otp").val();
            var formData = { otp, email };

            blockUI();

            $.ajax({
                type: 'POST',
                url: `${API_URL_ROOT}/verify-account`,
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

    function resentOTP()
    {
        $('.resend').on('click', function(){
            const email = getQueryParam("email");
            const formData = { email };
            
            blockUI();
    
            $.ajax({
                type: 'POST',
                url: `${API_URL_ROOT}/resend-otp`,
                data: JSON.stringify(formData),
                dataType: 'json',
                contentType: 'application/json',
                success: function(response)
                {
                    unblockUI();
                    alert(response.message);
                },
                error: function(req, status, err)
                {
                    alert(req.responseJSON.message);
                    unblockUI();
                }
            })
        })
    }
})