package com.adventuregoa


class Booking extends Base{

    int noOfPeople = 1
    int totalPrice
    Date startDate
    Date endDate
    String paymentReference

    static belongsTo = [User,Package]
    static hasOne = [user:User,package:Package]
    static hasMany = [tickets:Ticket]

    static constraints = {
        noOfPeople max: 10
        startDate min: new Date()
        noOfPeople min:1
        paymentReference nullable: true
        endDate nullable: true
    }


}
