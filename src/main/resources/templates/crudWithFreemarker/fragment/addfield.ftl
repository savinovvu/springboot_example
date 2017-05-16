<#macro inputfield name paramName value type view>

                        <div class="form-group has-feedback <#if view =="hidden">hidden</#if>"  >
                            <label for="name" class="control-label col-xs-3">${name}:</label>
                            <div class="col-xs-6">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input type="${type}" class="form-control" name="${paramName}" value="${value}" <#if view =="readonly">readonly</#if> required/>
                                </div>

                            </div>
                        </div>

</#macro>