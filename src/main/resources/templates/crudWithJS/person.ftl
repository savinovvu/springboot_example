<html>
<head>
    <meta charset="UTF-8">
    <title>ExampleJSPage</title>

    <link rel="stylesheet" href="webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">
    <link href="css/common/common.css" rel="stylesheet">

    <script type="text/javascript" src="webjars/jquery/3.1.1-1/jquery.min.js" defer></script>
    <script type="text/javascript" src="webjars/bootstrap/3.3.7-1/js/bootstrap.min.js" defer></script>
    <script type="text/javascript" src="webjars/datatables/1.10.12/js/jquery.dataTables.min.js" defer></script>
    <script type="text/javascript" src="webjars/datatables/1.10.12/js/dataTables.bootstrap.min.js" defer></script>

    <script type="text/javascript" src="js/common/ajax.js" defer></script>
    <script type="text/javascript" src="js/common/model.js" defer></script>

    <script type="text/javascript" src="js/person/service.js" defer></script>
    <script type="text/javascript" src="js/person/view.js" defer></script>
</head>
<body onload="downloadPage()">


<div class="view-box" style="margin:30px">
    <div class="menu">
        <div style="width: 20%">
            <button type="button" class="btn btn-lg btn-success custombtn" data-toggle="modal"
                    data-target="#myModal" onclick="getModal()">
                Добавить
            </button>
        </div>
    </div>
</div>

<table id="entityT" class="table table-bordered table-stripped table-condensed">
    <thead>
    <tr class="success">
        <td>id</td>
        <td>логин</td>
        <td>пароль</td>
        <td>дата рождения</td>
        <td></td>
    </tr>
    </thead>
</table>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">×</button>
                <h4 class="modal-title text-center" id="myModalLabel">Добавление/Обновление</h4>
            </div>
            <div class="modal-body">
                <form role="form" class="form-horizontal" id="editTable">

                    <div class="hidden">
                        <div class="form-group has-feedback" id="divId">
                            <label for="personId" class="control-label col-xs-3">id:</label>
                            <div class="col-xs-6">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="id" name="id">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group has-feedback">
                        <label for="name" class="control-label col-xs-3">Логин:</label>
                        <div class="col-xs-6">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input type="text" class="form-control" id="login" name="login" required/>
                            </div>

                        </div>
                    </div>
                    <div class="form-group has-feedback">
                        <label for="name" class="control-label col-xs-3">Пароль:</label>
                        <div class="col-xs-6">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input type="text" class="form-control" id="password" name="name" required/>
                            </div>

                        </div>
                    </div>
                    <div class="form-group has-feedback">
                        <label for="name" class="control-label col-xs-3">Дата рождения:</label>
                        <div class="col-xs-6">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input type="date" class="form-control" id="birthDate" name="birthDate"
                                       required/>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input id="save" type="submit" class="btn btn-primary" value="Выполнить">
                        <button type="button" id="dismissButton" class="btn btn-primary" data-dismiss="modal">
                            Завершить
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="myDelModal" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">×</button>
                <h4 class="modal-title text-center" id="myDelModalLabel">Удаление</h4>
            </div>
            <div class="modal-body">
                <form role="form" class="form-horizontal" id="delEntity">


                    <div class="form-group has-feedback">
                        <label for="name" class="control-label col-xs-3">id:</label>
                        <div class="col-xs-6">
                            <div class="input-group">
                                        <span class="input-group-addon"><i
                                                class="glyphicon glyphicon-info-sign"></i></span>
                                <input type="text" class="form-control" id="delId" name="id" readonly
                                       required>
                            </div>
                        </div>
                    </div>


                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Отмена</button>
                        <input type="submit" class="btn btn-danger" value="Удалить">
                        <input id="dismissDelButton" type="button" class="hidden" data-dismiss="modal">

                    </div>
                </form>
            </div>


        </div>
    </div>
</div>

</body>
</html>