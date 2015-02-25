package com.adventuregoa

class Package extends Base{

    String name
    String description
    String image
    int price

    int duration
    String shortDescription


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
        image blank: false, nullable: false
        price blank:false, min: 1000, max: 50000
    }
}
