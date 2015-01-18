package com.adventuregoa

class Package {

    String name
    String description
    String image
    double price

    static  mapping = {
        description sqlType: "text"
    }

    static constraints = {
    }
}
