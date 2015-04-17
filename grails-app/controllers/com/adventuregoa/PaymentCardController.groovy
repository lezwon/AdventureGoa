package com.adventuregoa

import adventuregoa.ConfirmBookingService
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

        if(params.booking_id){
            def bookingInstance = Booking.get(params.booking_id as int)

            try {
                ConfirmBookingService.updatePaymentStatus(bookingInstance)
                ConfirmBookingService.deductCapacity(bookingInstance)
                render 1

            } catch (e) {
                e.printStackTrace()
                render message(code: "default.update.error")
            }
        }

    }

}
