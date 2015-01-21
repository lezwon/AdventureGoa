package com.adventuregoa

class Ticket extends Base{

    String reference


    static belongsTo = [Booking]

    static constraints = {
        reference unique: true
    }
}
