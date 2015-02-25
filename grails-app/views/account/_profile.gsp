<div class="tab-pane fade active in" id="tab-profile">
    <div class="row">
        <div class="small-8 columns">
            <table class="table">
                <tr>
                    <td>First Name</td>
                    <td>${userInstance.firstName}</td>
                </tr>

                <tr>
                    <td>Last Name</td>
                    <td>${userInstance.lastName}</td>
                </tr>

                <tr>
                    <td>Phone Number</td>
                    <td>${userInstance.phone}</td>
                </tr>

                <tr>
                    <td>Date of Birth</td>
                    <td><g:formatDate date="${userInstance.dob}" format="dd MMM yyyy"/> </td>
                </tr>

                <tr>
                    <td>Username</td>
                    <td>${userInstance.username}</td>
                </tr>

                <tr>
                    <td>Email</td>
                    <td>${userInstance.email}</td>
                </tr>
            </table>
        </div>
    </div>
</div>