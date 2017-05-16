function downloadPage() {
    getAll();
}


function getAll() {
    send(ajaxAPI.person.personAll, "GET", view);
}

jQuery(function ($) {
    $("#delEntity").submit(function (e) {
        e.preventDefault();
        $("#dismissDelButton").click();
        send(ajaxAPI.person.person, "DELETE", view, Number($("#delId").val()));

    });
});


jQuery(function ($) {
    $("#editTable").submit(function (e) {
        e.preventDefault();

        var person = new Person(
            $("#id").val(),
            $("#login").val(),
            $("#password").val(),
            $("#birthDate").val()
        );

        if (person.id) {
            $("#dismissButton").click();
            send(ajaxAPI.person.person, "POST", view, person);
        } else {
            send(ajaxAPI.person.person, "PUT", view, person);
        }

    });
});