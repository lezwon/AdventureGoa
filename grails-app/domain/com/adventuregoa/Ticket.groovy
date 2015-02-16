package com.adventuregoa

class Ticket extends Base{

    String reference

    static belongsTo = [Booking]
    static hasOne = [booking:Booking]

    static constraints = {
        reference unique: true, nullable: true
    }

    def afterInsert(){
        this.reference = this.booking.reference+"-T"+String.format("%03d", this.id)
        this.save()
    }
}
