package com.adventuregoa

class Package {

    String name
    String description
    String image
    Date date
    double price

    static hasMany = [users:User]

    static  belongsTo = [User]

    static  mapping = {
        description sqlType: "text"
    }

    static constraints = {
    }
}
