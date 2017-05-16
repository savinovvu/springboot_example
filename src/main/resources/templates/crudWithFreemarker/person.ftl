<#import "../fragment/addform.ftl" as e>
<html>
<head>
    <meta charset="UTF-8">
    <title>ExpamplePage</title>

    <link rel="stylesheet" href="webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">
    <link href="css/common/common.css" rel="stylesheet">

    <script type="text/javascript" src="webjars/jquery/3.1.1-1/jquery.min.js" defer></script>
    <script type="text/javascript" src="webjars/bootstrap/3.3.7-1/js/bootstrap.min.js" defer></script>
    <script type="text/javascript" src="webjars/datatables/1.10.12/js/jquery.dataTables.min.js" defer></script>
    <script type="text/javascript" src="webjars/datatables/1.10.12/js/dataTables.bootstrap.min.js" defer></script>
</head>
<body >


<div style="margin:30px">
    <div style="width: 20%">
<@e.inputForm "Добавить" "post" "add" "" "" "" ""/>
    </div>
</div>

<div style="margin:30px"></div>

<table class="table table-bordered table-stripped table-condensed">
    <thead>
    <tr class="success">
        <td>id</td>
        <td>логин</td>
        <td>пароль</td>
        <td>дата рождения</td>
        <td></td>
        <td></td>

    <tr>
    </thead>

<#list persons as person>

    <@tableLine person=person/>


    <#macro tableLine person>
        <tr>
            <td>${person.id}</td>
            <td>${person.login}</td>
            <td>${person.password}</td>
            <td>${person.birthDate}</td>
            <td width="10%">
           <@e.inputForm "Обновить" "post" "update" "${person.id}" "${person.login}" "${person.password}" "${person.birthDate}"/>
            </td>
            <td width="10%">
           <@e.inputForm "Удалить" "post" "delete" "${person.id}" "" "" ""/>
            </td>
        </tr>
    </#macro>
</#list>


</table>

<p>Всего записей: ${persons?size}



</body>
</html>