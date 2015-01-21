
<div class="row">
    <div class="small-12 columns">

        <div class="crud-bar">
            <g:link action="create" class="btn btn-md btn-primary btn-add">Add Record</g:link>

            <g:form class="form-inline" action="search">

                <div class="form-group">
                    %{--<div class="inner-addon right-addon">--}%
                    <input type="text" class="form-control" placeholder="Search" name="string" value="${string}"/>
                    %{--<i class="glyphicon glyphicon-search"></i>--}%
                    %{--</div>--}%
                </div>

                <div class="form-group">
                    <input type="submit" value="Submit" class="btn btn-primary"/>
                </div>
            </g:form>
        </div>

    </div>
</div>
