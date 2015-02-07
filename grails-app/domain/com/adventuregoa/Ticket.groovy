package com.adventuregoa

class Ticket extends Base{

    String reference
    Booking booking

    static belongsTo = [Booking]

    static constraints = {
        reference unique: true
    }
}
