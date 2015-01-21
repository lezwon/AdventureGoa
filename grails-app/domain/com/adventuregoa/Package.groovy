package com.adventuregoa

class Package extends BaseClass{

    String name
    String description
    String image
    double price

    def created_at = new Date()
    def updated_at = new Date()

    def beforeUpdate(){
        updated_at = new Date()
    }

    static hasMany = [
            booking:Booking,
            hotels:Hotel,
            adventureActivities:AdventureActivity
    ]


    static  mapping = {
        description sqlType: "text"
    }

    static constraints = {
        name blank: false, unique: true
        description blank: false, maxSize: 500
        image blank: false, unique: true
        price blank:false
    }
}
