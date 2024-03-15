$(function () {

    'use strict';

    let token = sessionStorage.getItem('token');

	$(document).ready(function($) {
        //load countries
        loadCountries();
        //load immigration types
        loadImmigrationTypes();
        //submit immigration eligibility evaulation form
        submit();

        //handle immigration type change
        $('#immigration_type_id').on('change', function(){
            //clear the criteria list html
            $('.criteria-list').html('');
            //get the value of the option
            var value = $(this).val();

            if(value)
            {
                loadCriteria(value)
            }
        })
    });

    function loadCountries()
    {
        blockUI();

        $.ajax({
            type: 'GET',
            url: `${API_URL_ROOT}/countries?status=Active`,
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
                        <option value="${country.country_id}">${country.country_name}</option>
                    `
                }

                $('#country_id').html(html);
                
                unblockUI();
            },
            error: function(req, status, err)
            {
                alert(req.responseJSON.message)
                unblockUI();
            }
        });
    }
    
    function loadImmigrationTypes()
    {
        blockUI();

        $.ajax({
            type: 'GET',
            url: `${API_URL_ROOT}/immigration-types?immigration_type_status=Active`,
            dataType: 'json',
            contentType: 'application/json',
            success: function(response)
            {
                const immigrationTypes = response.data;
                let html = '<option value="">Please select</option>';

                for(let i = 0; i < immigrationTypes.length; i++)
                {
                    const immigrationType = immigrationTypes[i];

                    html += `
                        <option value="${immigrationType.immigration_type_id}">${immigrationType.immigration_type_name}</option>
                    `
                }

                $('#immigration_type_id').html(html);
                
                unblockUI();
            },
            error: function(req, status, err)
            {
                alert(req.responseJSON.message)
                unblockUI();
            }
        });
    }

    function loadCriteria(immigrationTypeID)
    {
        blockUI();

        $.ajax({
            type: 'GET',
            url: `${API_URL_ROOT}/criteria?criteria_status=Active&immigration_type_id=${immigrationTypeID}`,
            dataType: 'json',
            contentType: 'application/json',
            success: function(response)
            {
                const criteria = response.data;

                for(let i = 0; i < criteria.length; i++)
                {
                    const c = criteria[i];

                    // Create a label for the criteria
                    var label = $('<label>');
                    //add attibutes to the label
                    label.attr({ for: `criteria_${c.criteria_id}`, class: `form-label` });
                    //add label text
                    label.text(c.criteria_name);

                    // Create a select element for options
                    var select = $('<select>').attr({ name: `criteria_${c.criteria_id}`, id: `criteria_${c.criteria_id}`, class: `form-select required criteria` });

                    //create a div element to hold criteria
                    var div = $('<div>').attr({ class: 'mb-3' });

                    //instantiate the options element
                    let html = '<option value="">Please select</option>';

                    //populate select options with criteri options
                    for(let j = 0; j < c.options.length; j++)
                    {
                        const option = c.options[j];

                        html += `
                            <option value="${option.option_id}">${option.option_name}</option>
                        `
                    }

                    select.append(html);

                    //add criteria to div
                    div.append(label, select)

                    // Append div to criteriaContainer
                    $('.criteria-list').append(div);
                }
                
                unblockUI();
            },
            error: function(req, status, err)
            {
                alert(req.responseJSON.message)
                unblockUI();
            }
        });
    }

    function submit()
    {
        $('#evaluator').on('submit', function(e){
            e.preventDefault();
            var form = $(this);
            var country_id = form.find('#country_id').val();
            var immigration_type_id = form.find('#immigration_type_id').val();
            var criteriaListDiv = form.find('.criteria-list');
            var fields = form.find('input.required, select.required');
            var criteriaList = criteriaListDiv.find('.criteria');
            var formData = {
                country_id,
                immigration_type_id,
                options: []
            }

            for(var i = 0; i < criteriaList.length; i++)
            {
                const criteria = criteriaList[i];
                formData.options.push(criteria.value);
            }
            
            blockUI();

            for(var i=0;i<fields.length;i++)
            {
                if(fields[i].value === "")
                {
                    /*alert(fields[i].id)*/
                    unblockUI();
                    //showSimpleMessage("Attention", `${fields[i].name} is required`, "error");
                    //alert(`${fields[i].name} is required`)
                    alert('All fields are required');
                    $('#'+fields[i].id).focus();
                    return false;
                }
            }
        
            $.ajax({
                type: 'POST',
                url: API_URL_ROOT+'/apply',
                data: JSON.stringify(formData),
                dataType: 'json',
                contentType: 'application/json',
                headers:{'x-access-token':token},
                success: function(response)
                {
                    //clear the form;
                    form.get(0).reset();
                    criteriaListDiv.html("");
                    alert(response.message);
                    unblockUI();
                },
                error: function(req, status, err)
                {
                    console.log(req)
                    alert(req.responseJSON.message);
                    unblockUI();
                }
            });
        });
    }
}); 