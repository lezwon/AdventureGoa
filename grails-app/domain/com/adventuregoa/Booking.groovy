package com.adventuregoa


class Booking extends Base{

    transient springSecurityService

    int noOfPeople = 1
    int totalPrice
    Date startDate
    Date endDate
    String paymentStatus = "pending"
    String paymentReference


    static belongsTo = [User,Package]
    static hasOne = [user:User,package:Package]
    static hasMany = [tickets:Ticket]

    static constraints = {
        noOfPeople max: 10
        startDate min: new Date()
        noOfPeople min:1, max: 10
        paymentReference nullable: true
        endDate nullable: true
    }

    def beforeValidate(){
        this.totalPrice = this.package.price * this.noOfPeople
        this.user = springSecurityService.currentUser as User
    }


}
