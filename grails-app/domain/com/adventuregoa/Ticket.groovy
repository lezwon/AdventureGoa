package com.adventuregoa

class Ticket extends Base{

    String reference

    static belongsTo = [Booking]
    static hasOne = [booking:Booking]

    static constraints = {
        reference unique: true
    }
}
