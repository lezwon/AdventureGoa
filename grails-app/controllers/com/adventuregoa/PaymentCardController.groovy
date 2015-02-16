package com.adventuregoa

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PaymentCardController {

    static allowedMethods = [ajaxUpdate: "POST"]

    def springSecurityService

    @Transactional
    @Secured(["IS_AUTHENTICATED_REMEMBERED"])
    def ajaxUpdate(PaymentCard card){

        User user = springSecurityService.currentUser as User

        if(card.hasErrors()){
            render card.errors as JSON
            return
        }

        try{
            user.paymentCard = card

            Booking booking = Booking.get(params.booking_id as int)

            if(booking && user.booking.contains(booking)){
                booking.paymentStatus = "Paid"
                booking.bookingStatus = "Paid"
                booking.save(failOnError: true,flush: true)
            }

            user.save(failOnError: true,flush: true)
        }catch (e){
            e.printStackTrace()
            render message(code: "default.update.error")
            return
        }

        render 1
    }
}
