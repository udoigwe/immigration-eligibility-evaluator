$(function () {

    'use strict';

    let token = sessionStorage.getItem('token');

    $(document).ready(function($) {
        loadBlogPost();
    });

    function getQueryParam(paramName) {
        const currentUrl = new URL(window.location.href);
        const urlParams = new URLSearchParams(currentUrl.search);
        return urlParams.get(paramName);
    }

    function loadBlogPost()
    {
        var blogPostID = getQueryParam('post-id');
        console.log(blogPostID)

        blockUI();

        $.ajax({
            type: 'GET',
            url: `${API_URL_ROOT}/blog-posts/${blogPostID}`,
            dataType: 'json',
            contentType: 'application/json',
            headers:{'x-access-token':token},
            success: function(response)
            {
                const post = response.post;
                $('.header-title').text(post.blog_post_title);
                $('.blog-post-cover-image').attr({ src: `${post.blog_post_cover_image}`});
                $('.blog-post').html(post.blog_post);
                $('.created-at').html(moment.unix(post.blog_post_created_at).format('MMMM D, YYYY'));

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