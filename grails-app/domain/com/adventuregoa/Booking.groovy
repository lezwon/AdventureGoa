package com.adventuregoa

import java.text.SimpleDateFormat


class Booking extends Base{

    transient springSecurityService

    int noOfPeople = 1
    int totalPrice
    Date bookingDate
    String reference
    String paymentStatus = "Pending"
    String bookingStatus = "Payment Pending"
    String paymentReference

    static belongsTo = [User,Package]
    static hasOne = [user:User,_package:Package]
    static hasMany = [tickets:Ticket]

    static constraints = {
        noOfPeople max: 10
        paymentReference nullable: true
        reference nullable: true
        noOfPeople min:1, max: 10, validator: { val, obj, errors ->
            def capacity = obj._package.capacity

            if(capacity < val){
                String[] arguements = [val, capacity]
                errors.reject('booking.insufficient.capacity',arguements,'');
            }
        }
    }

    def beforeValidate(){
        this._package ? this.totalPrice = this._package.price * this.noOfPeople: null
        this.bookingDate = new Date()
        if(springSecurityService.isLoggedIn())
            this.user = springSecurityService.currentUser as User
    }

    def afterInsert(){
        String date = new SimpleDateFormat("yyMMdd").format(this._package.startDate);
        this.reference = "D"+date+"-B"+String.format("%03d", this.id)
        this.save()

        /*Reduce package capacity*/
        this._package.capacity -= this.noOfPeople
        this._package.save()
    }


}
