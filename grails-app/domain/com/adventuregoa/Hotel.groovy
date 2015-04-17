package com.adventuregoa

class Hotel extends Base{

    String name
    String description
    String email
    String phone
    String image
    Address address

    int star
    int price

    static hasMany = [packages: Package]
    static belongsTo = [Package]

    static constraints = {
        importFrom(User)
        star max: 5, min: 1
    }

    static mapping = {
        description sqlType: "text"
    }
}
