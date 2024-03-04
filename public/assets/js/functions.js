//block ui
function blockUI()
{
    $.blockUI({
        message: '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-loader spin"><line x1="12" y1="2" x2="12" y2="6"></line><line x1="12" y1="18" x2="12" y2="22"></line><line x1="4.93" y1="4.93" x2="7.76" y2="7.76"></line><line x1="16.24" y1="16.24" x2="19.07" y2="19.07"></line><line x1="2" y1="12" x2="6" y2="12"></line><line x1="18" y1="12" x2="22" y2="12"></line><line x1="4.93" y1="19.07" x2="7.76" y2="16.24"></line><line x1="16.24" y1="7.76" x2="19.07" y2="4.93"></line></svg>',
        fadeIn: 800, 
        //timeout: 2000, //unblock after 2 seconds
        overlayCSS: {
            backgroundColor: '#191e3a',
            opacity: 0.8,
            zIndex: 50000,
            cursor: 'wait'
        },
        css: {
            animation: 'spin 2s linear infinite',
            border: 0,
            color: '#25d5e4',
            zIndex: 50001,
            padding: 0,
            backgroundColor: 'transparent'
        }
    });
}

function unblockUI()
{
    $.unblockUI();
}

$.fn.serializeObject = function () {
    var formData = {};
    var formArray = this.serializeArray();
  
    for(var i = 0, n = formArray.length; i < n; ++i)
      formData[formArray[i].name] = formArray[i].value;
  
    return formData;
};

function rememberMe()
{
    if (localStorage.getItem('chkbx') && localStorage.getItem('chkbx') !== '') 
    {
        $('#remember-me').attr('checked', 'checked');
        $('#email').val(localStorage.getItem('email'));
        $('#password').val(localStorage.getItem('password'));
    } 
    else 
    {
        $('#remember-me').removeAttr('checked');
        $('#email').val('');
        $('#password').val('');
    }
}

function setRememberMe()
{
    if ($('#remember-me').is(':checked')) 
    {
        // save email and password in computer's hardrive
        localStorage.removeItem('email');
        localStorage.removeItem('password');
        localStorage.removeItem('chkbx');
        localStorage.setItem('email', $('#email').val());
        localStorage.setItem('password', $('#password').val());
        localStorage.setItem('chkbx', $('#remember-me').val());
    } 
    else 
    {
        //remove login details from computer's hardrivve
        localStorage.removeItem('email');
        localStorage.removeItem('password');
        localStorage.removeItem('chkbx');
    }
}

function validateEmail(email)
{
    var filter = /^[\w-.+]+@[a-zA-Z0-9.-]+.[a-zA-Z0-9]{2,4}$/;

    if(filter.test(email))
    {
        return true;
    }
    else 
    {
        return false;
    }
}

//Show simple message
function showSimpleMessage(title, text, type) {
    swal({
        title: title,
        text: text,
        type: type,
        confirmButtonText: "Close",
        showLoaderOnConfirm: false,
    });
}

//not logged in check
function isAuthenticated()
{
    //Instantiate access token
    var token = sessionStorage.getItem('token');

    //check if the access token is empty
    if(token === null || token === "" || token === undefined)
    {
        //redirect to the login page
        window.location = '/sign-in';
    }
}

function payloadClaim(token, param)
{
    var base64Url = token.split(".")[1];
    var base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
    var payload = JSON.parse(window.atob(base64));
    var claim = payload[param];

    return claim;
}

//display user profile
function displayUserProfile()
{
    var token = sessionStorage.getItem('token'); //access token

    if(token !== null && token !== "")
    {
        var id = payloadClaim(token, 'user_id')
        var email = payloadClaim(token, 'user_email');
        var role = payloadClaim(token, 'user_role');
        var firstname = payloadClaim(token, 'user_firstname');
        var avatar = payloadClaim(token, 'user_image_url') ? payloadClaim(token, 'user_image_url') : `../../assets/images/avatar.png`;

        $('.user-firstname').text(firstname);
        $('.user-role').text(role);
    }
}

function showSignOutMessage() {
    swal({
        title: "Sign Out?",
        text: "Are you sure you want to sign out this user?",
        type: "warning",
        showCancelButton: true,
        padding: '2em'
        //closeOnConfirm: false,
        //showLoaderOnConfirm: true,
    }).then(function(result) {
        if(result.value)
        {
            signOut();
        }
    });
}

function signOut()
{
    var token = sessionStorage.getItem('token'); //access token
    
    blockUI();

    //clear all stored sessions
    sessionStorage.clear();
                
    //redirect to login screeen
    window.location = '/signin';        
}

function formatNumber(num) {
    return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
}