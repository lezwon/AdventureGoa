package com.adventuregoa

class AdventureActivity {
    String name
    String description
    String email
    String type
    String duration

    int rating
    long phone
    double price

    static hasOne = [address: Address]
    static hasMany = [packages: Package]

    static constraints = {
    }
}
