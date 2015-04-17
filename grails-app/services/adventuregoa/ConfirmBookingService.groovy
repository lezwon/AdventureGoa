package adventuregoa

import com.adventuregoa.Booking
import grails.transaction.Transactional

@Transactional
class ConfirmBookingService {

    static def updatePaymentStatus(Booking bookingInstance){
        bookingInstance.bookingStatus = "Payment Paid"
        bookingInstance.paymentStatus = "Paid"
        bookingInstance.save(failOnError: true)
    }

    static def deductCapacity(Booking bookingInstance){
        bookingInstance._package.capacity -= bookingInstance.noOfPeople
        bookingInstance._package.save(failOnError: true)
    }
}
