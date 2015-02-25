<%--
  Created by IntelliJ IDEA.
  User: Lezwon
  Date: 16-02-2015
  Time: 14:25
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Print Tickets</title>
    <g:external dir="css" file="print.css" media="print, screen"/>
</head>
<body>


<g:each in="${ticketInstanceList}">
    <div class="ticket">
        <div class="row">
            <g:img dir="images" file="logo.png" alt="AdventureGoa" class="logo"/>
            <h3 class="ticket-title">Ticket Reference: ${it.reference}</h3>
        </div>

        <div class="row border">
            <div class="details-column">
                <table>
                    <tr>
                        <td>Booking Reference</td>
                        <td>${it.booking.reference}</td>
                    </tr>

                    <tr>
                        <td>Package</td>
                        <td>${it.booking.package.name}</td>
                    </tr>

                    <tr>
                        <td>Date</td>
                        <td><g:formatDate date="${it.booking.startDate}" format="dd/MM/yyyy"/> </td>
                    </tr>

                    <tr>
                        <td>Price</td>
                        <td><g:formatNumber number="${it.booking.package.price}" format="INR #,##,###/-" /> </td>
                    </tr>

                </table>
            </div>

            <div class="details-column">
                <table>
                    <tr>
                        <td>Time</td>
                        <td>9.00 AM</td>
                    </tr>

                    <tr>
                        <td>Place</td>
                        <td>Campal Ground, Panaji</td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="row">
            <div class="footer-column shade">
                <h5 class="footer-title">Address</h5>
                <p class="footer-description">
                    Lorem ipsum dolor sit <br />
                    amet, consectetur adipisicing <br />
                    elit. In, iure.
                </p>
            </div>

            <div class="footer-column shade">
                <h5 class="footer-title">Email</h5>
                <p class="footer-description">
                    lorem@lorem.com
                </p>
            </div>

            <div class="footer-column shade">
                <h5 class="footer-title">Phone</h5>
                <p class="footer-description">
                    0832-2294490
                </p>
            </div>
        </div>
    </div>
</g:each>

<script type="text/javascript">

    document.body.onload = function(){
        var mywindow = window.self;
        mywindow.focus(); // necessary for IE >= 10
        mywindow.print();
    }

</script>

</body>
</html>