package com.adventuregoa

class Hotel {

    String name
    String description
    String email

    int star
    int rating
    long phone
    double price
    int roomsCapacity

    static int roomsAvailable


    static hasOne = [address: Address]
    static hasMany = [packages: Package]

    static constraints = {
        star max: 5, min: 1
        rating max: 5, min: 1
    }

    static mapping = {
        description sqlType: "text"
    }
}
