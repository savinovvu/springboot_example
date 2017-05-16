var ajaxAPI = {

    "person": {
        "person": "/person",
        "personAll": "/person/all",
    }

};


function send(url, type, viewFunction, jsonData, additionData) {
    $.ajax({

        url: url,
        type: type,
        contentType: 'application/json',
        data: JSON.stringify(jsonData),
        success: function (data) {
            viewFunction(data, additionData);

        },
        error: function (x) {
            alert("error");

        }

    });
    return false;
}