package com.adventuregoa

class Ticket{

    String reference


    static belongsTo = [Booking]

    static constraints = {
        reference unique: true
    }
}
