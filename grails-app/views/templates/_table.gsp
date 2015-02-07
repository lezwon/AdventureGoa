<div class="table-container table-responsive">
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Edit</th>
            <th>Delete</th>
            <th>ID</th>
        %{--<th>Type</th>--}%
            <g:each in="${fields}" var="field">
                <th>${field.name.capitalize()}</th>
            </g:each>
        </tr>
        </thead>

        <tbody>
        <g:each in="${data}">
            <tr>
                <td>
                    <g:link action="edit" id="${it.id}">Edit</g:link>
                </td>

                <td>
                    <g:form action="delete" method="DELETE" id="${it.id}">
                        <input type="submit" value="Delete" />
                    </g:form>
                </td>

                <td>${it.id}</td>

            %{--<td>${it.getAuthorities()[0].getAuthority()}</td>--}%

                <g:each in="${fields}" var="field">
                    <td>${it.getProperty(field.name)}</td>
                </g:each>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>