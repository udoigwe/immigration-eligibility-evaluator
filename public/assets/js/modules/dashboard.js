$(function () {

    'use strict';

    let token = sessionStorage.getItem('token');

    $(document).ready(function($) {
        displayUserDetails();
    });

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
})