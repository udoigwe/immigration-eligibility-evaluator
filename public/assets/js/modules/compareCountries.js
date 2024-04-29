$(function () {

    'use strict';

    let token = sessionStorage.getItem('token');

	$(document).ready(function($) {
        //load countries
        loadCountries();
        //load visa categories
        loadVisaTypes();
        //submit immigration eligibility evaulation form
        submit();
        //find suitable countries
        findSuitableCountries();

        //handle visa type / country change
        $('#evaluator').on('change', '#CountryCode, #VisaCategoryID', function(){
            //clear the criteria list html
            $('.criteria-list').html('');
            //get the value of the option
            var CountryCode = $('#evaluator').find('#CountryCode').val();
            var VisaCategoryID = $('#evaluator').find('#VisaCategoryID').val();

            if(!CountryCode || !VisaCategoryID)
            {
                $('.criteria-list').html('');
                return false;
                
            }
            
            loadCriteria(CountryCode, VisaCategoryID);
        })
    });

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

                $('#country_one').html(html);
                $('#country_two').html(html);
                
                unblockUI();
            },
            error: function(req, status, err)
            {
                alert(req.responseJSON.message)
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
                alert(req.responseJSON.message)
                unblockUI();
            }
        });
    }

    function loadCriteria(CountryCode, VisaCategoryID)
    {
        blockUI();

        $.ajax({
            type: 'GET',
            url: `${API_URL_ROOT}/visa-criteria/${CountryCode}/${VisaCategoryID}`,
            dataType: 'json',
            contentType: 'application/json',
            success: function(response)
            {
                const criteria = response.criteria;

                for(let i = 0; i < criteria.length; i++)
                {
                    const criterion = criteria[i];

                    // Create a label for the criterion
                    var label = $('<label>');
                    //add attibutes to the label
                    label.attr({ for: `criterion_${criterion.VisaCategoryID}`, class: `form-label` });
                    //add label text
                    label.text(criterion.CriterionQuestion);

                    // Create a select element for options
                    var select = $('<select>').attr({ name: `criterion_${criterion.VisaCategoryID}`, id: `criterion_${criterion.VisaCategoryID}`, class: `form-select required criterion` });

                    //create a div element to hold criteria
                    var div = $('<div>').attr({ class: 'mb-3' });

                    //instantiate the options element
                    let html = '<option value="">Please select</option>';

                    //populate select options with criteri options
                    for(let j = 0; j < criterion.options.length; j++)
                    {
                        const option = criterion.options[j];

                        html += `
                            <option value="${option.CountryCriterionID}">${option.CriteriaOptions}</option>
                        `
                    }

                    select.append(html);

                    //add criterion to div
                    div.append(label, select)

                    // Append div to criteriaContainer
                    $('.criteria-list').append(div);
                }
                
                unblockUI();
            },
            error: function(req, status, err)
            {
                showSimpleMessage("Attention", req.responseJSON.message, "error")
                unblockUI();
            }
        });
    }

    function submit()
    {
        $('#country-comparison').on('submit', function(e){
            e.preventDefault();
            var form = $(this);
            var countryOne = form.find('#country_one').val();
            var countryTwo = form.find('#country_two').val();
            var fields = form.find('input.required, select.required');
            
            blockUI();

            for(var i=0;i<fields.length;i++)
            {
                if(fields[i].value === "")
                {
                    /*alert(fields[i].id)*/
                    unblockUI();
                    //showSimpleMessage("Attention", `${fields[i].name} is required`, "error");
                    //alert(`${fields[i].name} is required`)
                    //alert('All fields are required');
                    showSimpleMessage("Attention", `All fiedls are required`, "error");
                    $('#'+fields[i].id).focus();
                    return false;
                }
            }

            if(countryOne === countryTwo)
            {
                unblockUI();
                showSimpleMessage("Attention", `You cannot compare a country against itself`, "error");
                return false;
            }
        
            $.ajax({
                type: 'POST',
                url: API_URL_ROOT+'/compare',
                data: JSON.stringify(form.serializeObject()),
                dataType: 'json',
                contentType: 'application/json',
                headers:{'x-access-token':token},
                success: function(response)
                {
                    const immigrationDetails = response.immigrationDetails;
                    $('.immigration-details').html("");

                    // Loop through the data array
                    $.each(immigrationDetails, function(index, country) {
                        //create a div column container
                        var divCol = $("<div>").addClass("col-lg-6").appendTo(".immigration-details");

                        //create a card div
                        var cardDiv = $("<div>").addClass("card").appendTo(divCol);

                        //create a card body
                        var cardBody = $("<div>").addClass("card-body").appendTo(cardDiv);

                        //create a h4 for the country name and code
                        $("<h3>").addClass("header-title").text(`${country.country_name} (${country.country_code})`).appendTo(cardBody);
                        
                        //create a P for the visa category
                        $("<p>").addClass("text-muted font-15").text(`${country.visa_category}`).appendTo(cardBody);

                        // Loop through each visa criterion
                        $.each(country.visa_criteria, function(i, criterion) {
                            // Create a container for criterion details
                            var criteriaContainer = $("<div>").addClass("criteria-container").appendTo(cardBody);

                            // Display criterion name
                            $("<h5>").text(criterion.criterion_name).appendTo(criteriaContainer);

                            // Loop through criterion details
                            $.each(criterion.criterion_details, function(j, detail) {
                                // Display criterion details
                                var detailDiv = $("<div>").addClass("criterion-details").appendTo(criteriaContainer);
                                $("<span>").addClass("options-span").html(`Option: <b>${detail.CriteriaOptions}</b>` ).appendTo(detailDiv);
                                $("<span>").html(`Points Value: <b>${detail.PointsValue}</b>`).appendTo(detailDiv);
                            });
                        });
                    });


                    unblockUI();
                    console.log(response)
                    
                },
                error: function(req, status, err)
                {
                    showSimpleMessage("Attention", req.responseJSON.message, "error");
                    unblockUI();
                }
            });
        });
    }

    function findSuitableCountries()
    {
        $('#suitable-countries-form').on('submit', function(e){
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
                    //alert('All fields are required');
                    $('#'+fields[i].id).focus();
                    return false;
                }
            }
        
            $.ajax({
                type: 'POST',
                url: API_URL_ROOT+'/find-suitable-countries',
                data: JSON.stringify(form.serializeObject()),
                dataType: 'json',
                contentType: 'application/json',
                headers:{'x-access-token':token},
                success: function(response)
                {
                    const suitableCountries = response.suitableCountries;
                    let html = '';
                    let emptyHTML = `
                        <div class="card card-body" style="margin-bottom: 20px; text-transform: uppercase; background-color: #F0F0F0">
                            <h5 class="card-text date_of_birth mx-auto text-center">Your profile is not suitable for any country. Please improve your profile</h4>
                        </div>
                    `

                    for(var i = 0; i < suitableCountries.length; i++)
                    {
                        const suitableCountry = suitableCountries[i];

                        html += `
                            <div class="card card-body" style="margin-bottom: 20px; text-transform: uppercase; background-color: #F0F0F0">
                                <h3 class="card-title mx-auto text-center">${suitableCountry.country}</h1>
                            </div>
                        `
                    }

                    $('#country-list').html(suitableCountries.length === 0 ? emptyHTML : html);
                    $("#countryDisplay").modal("show");

                    //clear the form;
                    form.get(0).reset();
                    unblockUI();
                },
                error: function(req, status, err)
                {
                    const message = req.status === 400 ? req.responseJSON.message + `<br>Please click <a href='/dashboard'>here to get started</a>` : req.responseJSON.message;
                    showSimpleHTMLMessage("Attention", message, "error");
                    unblockUI();
                }
            });
        });
    }
}); 