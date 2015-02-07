package com.adventuregoa

class AdventureActivity extends Base{
    String name
    String description
    String email
    String image
    String duration
    String phone

    Address address
    int rating
    int price

    static hasMany = [packages: Package]
    static belongsTo = [Package]

    static constraints = {
        importFrom(Hotel)
    }
}
