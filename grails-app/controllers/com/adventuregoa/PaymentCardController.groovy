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
            card.save(failOnError: true);
            user.paymentCard = card
            user.save(failOnError: true,flush: true)
        }catch (e){
            e.printStackTrace()
            render message(code: "default.update.error")
            return
        }

        updatePaymentStatus();

        render 1
    }

    def updatePaymentStatus() {
        def bookingId = params.booking_id
        if(bookingId){
            def bookingInstance = Booking.get(bookingId as int)
            bookingInstance.bookingStatus = "Payment Paid"
            bookingInstance.paymentStatus = "Paid"
        }
    }
}
