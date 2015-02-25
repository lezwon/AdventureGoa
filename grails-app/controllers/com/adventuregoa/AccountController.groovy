package com.adventuregoa

import grails.plugin.springsecurity.annotation.Secured

@Secured("IS_AUTHENTICATED_REMEMBERED")
class AccountController {

    def springSecurityService

    def index() {
        def user = springSecurityService.currentUser as User
        render model: [
                userInstance: user,
                addressInstance: user.address,
                paymentCardInstance: user.paymentCard,
                bookingInstanceList: user.booking
        ], view: "index"
    }
}
