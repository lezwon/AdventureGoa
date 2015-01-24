package com.adventuregoa

class Hotel extends Base{

    String name
    String description
    String email
    Address address

    int star
    int rating
    long phone
    double price

    int roomsCapacity
    int roomsAvailable

    static hasMany = [packages: Package]
    static belongsTo = [Package]

    static constraints = {
        star max: 5, min: 1
        rating max: 5, min: 1
    }

    static mapping = {
        description sqlType: "text"
    }
}
