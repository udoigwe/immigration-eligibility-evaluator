$(function () {

    'use strict';

    let token = sessionStorage.getItem('token');

    $(document).ready(function($) {
        displayUserDetails();
        loadBlogPosts();
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

    function loadBlogPosts()
    {
        blockUI();

        $.ajax({
            type: 'GET',
            url: `${API_URL_ROOT}/blog-posts`,
            dataType: 'json',
            contentType: 'application/json',
            headers:{'x-access-token':token},
            success: function(response)
            {
                const posts = response.data;
                let html = '';

                for(let i = 0; i < posts.length; i++)
                {
                    const post = posts[i];

                    html += `
                        <div class="card">
                            <img src="${post.blog_post_cover_image}" alt="${post.blog_post_title}">
                            <div class="overlay">
                                <h2>${post.blog_post_title}</h2>
                                <p class="date">Published: ${moment.unix(post.blog_post_created_at).format('MMMM D, YYYY')}</p>
                                <a href="/blog-post?post-id=${post.blog_post_id}">Read More</a>
                            </div>
                        </div>
                    `
                }

                $('.blog-posts').html(html);
                
                unblockUI();
            },
            error: function(req, status, err)
            {
                alert(req.responseJSON.message)
                unblockUI();
            }
        });
    }
})