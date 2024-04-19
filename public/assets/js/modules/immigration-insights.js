$(function () {

    'use strict';

    let token = sessionStorage.getItem('token');

	$(document).ready(function($) {
        //get all countries
        loadCountries();
        //get all visa types
        loadVisaTypes();
        //load insights
        loadInsights();

        /* //filter posts by categories
        $("#category-filter").on("change", function(){
            var categoryID = $(this).val();
            loadPostsByCategory(categoryID);
        }) */
    });

    function loadInsights()
    {
        $('#insights-form').on('submit', function(e){
            e.preventDefault();
            var form = $(this);
            var countryCode = form.find("#country_code").val();
            var visaCategoryID = form.find("#visa_category_id").val();
            var fields = form.find('input.required, select.required, textarea.required');
            
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
                type: 'GET',
                url: `${API_URL_ROOT}/insights/${countryCode}/${visaCategoryID}`,
                data: JSON.stringify(form.serializeObject()),
                dataType: 'json',
                contentType: 'application/json',
                headers:{'x-access-token':token},
                success: function(response)
                {
                    var insights = response.insights;
                    var insightsDiv = $('.insights');
                    insightsDiv.html(insights);
                    form.get(0).reset();
                    unblockUI();
                },
                error: function(req, status, err)
                {
                    console.log(req)
                    showSimpleMessage("Attention", req.responseJSON.message, "error");
                    unblockUI();
                }
            });
        });
    }

    function reply()
    {
        $('.posts').on('click', '.reply-button', function(e){
            e.preventDefault();
            var postID = $(this).attr("post-id");
            var replyModal = $("#replyModal");
            replyModal.find('#post_id').val(postID);

            replyModal.modal("show");
        });
    }

    function loadPosts()
    {
        blockUI();

        $.ajax({
            type: 'GET',
            url: `${API_URL_ROOT}/posts`,
            dataType: 'json',
            contentType: 'application/json',
            headers:{'x-access-token':token},
            success: function(response)
            {
                const posts = response.data;
                let HTMLPost = '';

                for(let i = 0; i < posts.length; i++)
                {
                    const post = posts[i];
                    let HTMLReplies = '';

                    for(let j = 0; j < post.replies.length; j++)
                    {
                        const reply = post.replies[j];

                        HTMLReplies += `
                            <div class="d-flex align-items-top mb-2">
                                <img src="/assets/images/avatar.png" alt="" class="flex-shrink-0 comment-avatar avatar-sm rounded me-2">
                                <div class="flex-grow-1">
                                    <h5 class="mt-0">
                                        <a href="#" class="text-dark">
                                            ${reply.first_name} ${reply.last_name}
                                        </a>
                                        <small class="ms-1 text-muted">about ${moment.unix(reply.created_at).fromNow()}</small>
                                    </h5>
                                    <p>${reply.post_reply}</p>
                                </div>
                            </div>
                        `;
                    }

                    HTMLPost += `
                        <div class="d-flex align-items-top mb-2">
                            <img src="/assets/images/avatar.png" alt="" class="flex-shrink-0 comment-avatar avatar-sm rounded me-2">
                            <div class="flex-grow-1">
                                <h5 class="mt-0">
                                    <a href="#" class="text-dark">
                                        ${post.first_name} ${post.last_name}
                                    </a>
                                    <small class="ms-1 text-muted">about ${moment.unix(post.created_at).fromNow()}</small>
                                </h5>
                                <p>${post.post}</p>
                                <div class="comment-footer pt-2 mb-3">
                                    <a href="#" post-id="${post.post_id}" class="reply-button">Reply</a>
                                </div>

                                ${HTMLReplies}
                            </div>
                        </div>
                        <!--  media -->
                    `
                }

                $('.posts').html(HTMLPost);

                unblockUI();
            },
            error: function(req, status, err)
            {
                alert(req.responseJSON.message)
                unblockUI();
            }
        });
    }
    
    function loadPostsByCategory(categoryID)
    {
        blockUI();

        $.ajax({
            type: 'GET',
            url: `${API_URL_ROOT}/posts?post_category_id=${categoryID}`,
            dataType: 'json',
            contentType: 'application/json',
            headers:{'x-access-token':token},
            success: function(response)
            {
                const posts = response.data;
                let HTMLPost = '';

                for(let i = 0; i < posts.length; i++)
                {
                    const post = posts[i];
                    let HTMLReplies = '';

                    for(let j = 0; j < post.replies.length; j++)
                    {
                        const reply = post.replies[j];

                        HTMLReplies += `
                            <div class="d-flex align-items-top mb-2">
                                <img src="/assets/images/avatar.png" alt="" class="flex-shrink-0 comment-avatar avatar-sm rounded me-2">
                                <div class="flex-grow-1">
                                    <h5 class="mt-0">
                                        <a href="#" class="text-dark">
                                            ${reply.first_name} ${reply.last_name}
                                        </a>
                                        <small class="ms-1 text-muted">about ${moment.unix(reply.created_at).fromNow()}</small>
                                    </h5>
                                    <p>${reply.post_reply}</p>
                                </div>
                            </div>
                        `;
                    }

                    HTMLPost += `
                        <div class="d-flex align-items-top mb-2">
                            <img src="/assets/images/avatar.png" alt="" class="flex-shrink-0 comment-avatar avatar-sm rounded me-2">
                            <div class="flex-grow-1">
                                <h5 class="mt-0">
                                    <a href="#" class="text-dark">
                                        ${post.first_name} ${post.last_name}
                                    </a>
                                    <small class="ms-1 text-muted">about ${moment.unix(post.created_at).fromNow()}</small>
                                </h5>
                                <p>${post.post}</p>
                                <div class="comment-footer pt-2 mb-3">
                                    <a href="#" post-id="${post.post_id}" class="reply-button">Reply</a>
                                </div>

                                ${HTMLReplies}
                            </div>
                        </div>
                        <!--  media -->
                    `
                }

                $('.posts').html(HTMLPost);

                unblockUI();
            },
            error: function(req, status, err)
            {
                alert(req.responseJSON.message)
                unblockUI();
            }
        });
    }

    function post()
    {
        $('#post-form').on('submit', function(e){
            e.preventDefault();
            var form = $(this);
            var fields = form.find('input.required, select.required, textarea.required');
            
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
                url: API_URL_ROOT+'/posts',
                data: JSON.stringify(form.serializeObject()),
                dataType: 'json',
                contentType: 'application/json',
                headers:{'x-access-token':token},
                success: function(response)
                {
                    unblockUI();
                    form.get(0).reset();
                    showSimpleMessage("Success", response.message, "success");
                    loadPosts();
                },
                error: function(req, status, err)
                {
                    showSimpleMessage("Attention", req.responseJSON.message, "error");
                    unblockUI();
                }
            });
        });
    }

    function loadCountries()
    {
        blockUI();

        $.ajax({
            type: 'GET',
            url: `${API_URL_ROOT}/countries`,
            dataType: 'json',
            contentType: 'application/json',
            success: function(response)
            {
                const countries = response.data;
                let html = '<option value="">Please select</option>';

                for(let i = 0; i < countries.length; i++)
                {
                    const country = countries[i];

                    html += `
                        <option value="${country.CountryCode}">${country.CountryName}</option>
                    `
                }

                $('#country_code').html(html);
                
                unblockUI();
            },
            error: function(req, status, err)
            {
                showSimpleHTMLMessage("Attention", req.responseJSON.message, "error");
                unblockUI();
            }
        });
    }
    
    function loadVisaTypes()
    {
        blockUI();

        $.ajax({
            type: 'GET',
            url: `${API_URL_ROOT}/visa-categories`,
            dataType: 'json',
            contentType: 'application/json',
            success: function(response)
            {
                const categories = response.data;
                let html = '<option value="">Please select</option>';

                for(let i = 0; i < categories.length; i++)
                {
                    const category = categories[i];

                    html += `
                        <option value="${category.VisaCategoryID}">${category.CategoryName}</option>
                    `
                }

                $('#visa_category_id').html(html);
                
                unblockUI();
            },
            error: function(req, status, err)
            {
                showSimpleHTMLMessage("Attention", req.responseJSON.message, "error");
                unblockUI();
            }
        });
    }
}); 