package adventuregoa

import com.adventuregoa.Booking
import com.adventuregoa.Ticket


class TicketGeneratorService {

    def static generate(Booking booking) {
        if(booking.bookingStatus == "Tickets Generated"){
            return Ticket.findAllByBooking(booking)
        }

        (1..booking.noOfPeople).each{
            try{
                Ticket tempTicket = new Ticket()
                tempTicket.booking = booking
                tempTicket.save(failOnError: true)

            }catch (e){
                e.printStackTrace()
            }
        }

        booking.bookingStatus = "Tickets Generated"
    }
}
