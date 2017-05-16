<#import "addfield.ftl" as e>
<#macro inputForm actionName method action id login password birthdate>

<div class="view-box">
<div class="menu">
        <label
        for="btn${action}${id}" class="btn btn-lg custombtn <#if action =="delete">btn-danger<#else>btn-success</#if>">${actionName}</label>

    <button id="btn${action}${id}" type="button" class="hidden" data-toggle="modal"
            data-target="#myModal${action}${id}">
    </button>
</div>


    <div class="modal fade" id="myModal${action}${id}" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h4 class="modal-title text-center" id="myModalLabel">Добавление</h4>
                </div>
                <div class="modal-body">
                    <form role="form" class="form-horizontal" method="${method}" action="${action}">

                        <#if id != "" >
                            <@e.inputfield "id" "id" "${id}" "text" "readonly" />
                        </#if>

                        <#if login != "" || action="add">
                            <@e.inputfield "логин" "login" "${login}" "text" "" />
                        </#if>

                        <#if password != "" || action="add">
                            <@e.inputfield "пароль" "password" "${password}" "text" "" />
                        </#if>

                        <#if birthdate != "" || action="add">
                            <@e.inputfield "дата рождения" "birthdate" "${birthdate}" "date" "" />
                        </#if>

                        <div class="modal-footer">
                            <input type="submit" class="btn btn-primary" value="Выполнить">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Завершить</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>


</#macro>

