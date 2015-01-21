package com.adventuregoa

class Address{

    String streetAddress
	String country
	String state
    String landmark
	int postCode

    static hasOne = [
            user: User,
            hotel: Hotel,
            adventureActivity: AdventureActivity
    ]

    static constraints = {
        streetAddress blank: false
        country blank: false
        state blank: false
        postCode blank: false
        landmark blank: true, nullable: true
    }

    static  mapping = {
        streetAddress sqlType: "text"
        country defaultValue:"INDIA"
    }
}
