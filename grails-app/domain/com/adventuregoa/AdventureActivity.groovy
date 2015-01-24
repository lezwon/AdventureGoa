package com.adventuregoa

class AdventureActivity extends Base{
    String name
    String description
    String email
    String type
    String duration
    Address address

    int rating
    long phone
    double price

    static hasMany = [packages: Package]
    static belongsTo = [Package]

    static constraints = {
    }
}
