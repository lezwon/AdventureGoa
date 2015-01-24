package com.adventuregoa

class Booking extends Base{

    int noOfPeople
    int totalPrice
    Date startDate
    Date endDate
    String paymentReference

    static belongsTo = [User,Package]
    static hasMany = [tickets:Ticket]

    static constraints = {
        noOfPeople max: 10
        startDate min: new Date()
    }


}
