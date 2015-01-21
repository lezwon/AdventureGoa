package com.adventuregoa

class Package extends  Base{

    String name
    String description
    String image
    double price

    static hasMany = [
            booking:Booking,
            hotels:Hotel,
            adventureActivities:AdventureActivity
    ]

    static  belongsTo = [User]

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
