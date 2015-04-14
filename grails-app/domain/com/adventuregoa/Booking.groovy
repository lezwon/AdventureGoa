package com.adventuregoa

import java.text.SimpleDateFormat


class Booking extends Base{

    transient springSecurityService

    int noOfPeople = 1
    int totalPrice
//    Date bookingDate
    Date startDate
    Date endDate
    String reference
    String paymentStatus = "pending"
    String bookingStatus = "Payment Pending"
    String paymentReference

    static belongsTo = [User,Package]
    static hasOne = [user:User,package:Package]
    static hasMany = [tickets:Ticket]

    static constraints = {
        noOfPeople max: 10
        startDate shared: "currentDay"
        noOfPeople min:1, max: 10
        paymentReference nullable: true
        endDate nullable: true
        reference nullable: true
    }

    def beforeValidate(){
        this.package ? this.totalPrice = this.package.price * this.noOfPeople: null
//        this.bookingDate = new Date()
        if(springSecurityService.isLoggedIn())
            this.user = springSecurityService.currentUser as User
    }

    def afterInsert(){
        String date = new SimpleDateFormat("yyMMdd").format(this.startDate);
        this.reference = "D"+date+"-B"+String.format("%03d", this.id)
        this.save()
    }


}
