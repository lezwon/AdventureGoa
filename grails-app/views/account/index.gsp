<%--
  Created by IntelliJ IDEA.
  User: Lezwon
  Date: 22-02-2015
  Time: 18:14
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="white-layout"/>
    <title>Account</title>
</head>

<body>
    <div class="header-container">
        <div class="row">
            <div class="small-12-columns">
                <h1>Account</h1>
                <hr />
            </div>
        </div>
    </div>

    <div class="settings-container">
        <div class="row">
            <div class="small-12 columns">
                <div class="tabs-container">
                    <div class="tabbable tabs-left clearfix">
                        <ul id="myTab1" class="nav nav-tabs">
                            <li  class="active"><a href="#tab-profile" data-toggle="tab">Profile</a></li>
                            <li><a href="#tab-address" data-toggle="tab">Address</a></li>
                            <li><a href="#tab-payment" data-toggle="tab">Payment Details</a></li>
                            <li><a href="#tab-orders" data-toggle="tab">Orders</a></li>
                            <li><a href="#tab-wishlist" data-toggle="tab">Wishlist</a></li>
                        </ul>

                        <div class="tab-content">

                            <g:render template="profile" model="[userInstance: userInstance]"/>

                            <g:render template="address" model="[addressInstance: addressInstance]"/>

                            <g:render template="payment" model="[paymentCardInstance: paymentCardInstance]"/>

                            <g:render template="orders" model="[bookingInstanceList: bookingInstanceList]"/>

                            %{--<g:render template="wishlist" model="[paymentCardInstance: paymentCardInstance]"/>--}%

                            <div class="tab-pane fade" id="tab-orders">
                                <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone...</p>
                            </div>

                            <div class="tab-pane fade" id="tab-wishlist">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab autem cumque hic nesciunt nihil numquam voluptatem. Accusamus, alias asperiores aspernatur atque eos reiciendis, repudiandae sequi ut, veniam vero vitae voluptatum!</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>