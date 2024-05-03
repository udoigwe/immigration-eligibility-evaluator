$(function () {

    'use strict';

    let token = sessionStorage.getItem('token');

	$(document).ready(function($) {
        //profile update
        submitProfileUpdate();
        //sidebar open
        var isSidebarOpen = localStorage.getItem('sidebarOpen');
        if (isSidebarOpen === 'true' || isSidebarOpen === undefined || isSidebarOpen === null) {
            $('.left-side-menu').css({left: '0px'});
            $('.content-page').css({marginLeft: '240px'});
            $('.footer').css({left: '240px'});
            $('.logo-box').css({backgroundColor: '#ffffff', width: '240px'});
        }
        else
        {
            $('.logo-box').css({backgroundColor: "#ebeff2", width: '100px'});
            $('.left-side-menu').css({left: '-240px'});
            $('.content-page').css({marginLeft: '0px'});
            $('.footer').css({left: '0px'});
        }

        $('.hide-left-menu').click(function () {
            if ($('.left-side-menu').css('left') === '0px') {
                $('.logo-box').css({backgroundColor: "#ebeff2", width: '100px'});
                $('.left-side-menu').animate({left: '-240px'});
                $('.content-page').animate({marginLeft: '0px'});
                $('.footer').animate({left: '0px'});
                localStorage.setItem('sidebarOpen', 'false');
            } else {
                $('.logo-box').css({backgroundColor: "#ffffff", width: '240px'});
                $('.left-side-menu').animate({left: '0px'});
                $('.content-page').animate({marginLeft: '240px'});
                $('.footer').animate({left: '240px'});
                localStorage.setItem('sidebarOpen', 'true');
            }
        });
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
                    showSimpleMessage("Attention", `${fields[i].name} is required`, "error");
                    //alert(`${fields[i].name} is required`)
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
                    showSimpleMessage("Attention", req.responseJSON.message, "error");
                    //alert(req.responseJSON.message);
                    unblockUI();
                }
            });
        });
    }
}); 