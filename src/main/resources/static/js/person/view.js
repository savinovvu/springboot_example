function view(data) {
    var table = $('#entityT').DataTable();
    table.destroy();
    $('#entityT').DataTable({
        "data": data,
        "columns": [
            {"data": "id"},
            {
                "data": "login",
                "render": function (row, data, dataIndex) {

                    return '<p id="login-' + dataIndex.id + '">' + row + '</p>';

                }
            },

            {
                "data": "password",
                "render": function (row, data, dataIndex) {
                    return '<p id="password-' + dataIndex.id + '">' + row + '</p>';
                }
            },

            {
                "data": "birthDate",
                "render": function (row, data, dataIndex) {
                    return '<p id="birthDate-' + dataIndex.id + '">' + row + '</p>';

                }
            },

            {
                "defaultContent": "",
                "orderable": false,
                "render": function (row, data, dataIndex) {
                    return '<a class="btn btn-xs btn-primary" onclick="getModal(' + dataIndex.id + ')" data-toggle="modal" data-target="#myModal">Обновить</a>' +
                        '<a  class="btn btn-xs btn-danger" onclick="getDelModal(' + dataIndex.id + ')" data-toggle="modal" data-target="#myDelModal">Удалить</a>';
                }
            }
        ]
    });

}


function getModal(id) {
    if (id === undefined) {
        document.getElementById('id').value = "";
    } else {
        document.getElementById('id').value = id;
    }
    document.getElementById('login').value = $('#login-' + id).text();
    document.getElementById('password').value = $('#password-' + id).text();
    document.getElementById('birthDate').value = $('#birthDate-' + id).text().split("-").reverse().join("-");

}

function getDelModal(id, name) {
    document.getElementById('delId').value = id;
}
