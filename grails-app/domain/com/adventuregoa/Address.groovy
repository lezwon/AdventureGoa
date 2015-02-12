package com.adventuregoa

class Address extends Base{

    String streetAddress
	String country = "INDIA"
	String state
    String landmark
	int zipCode

//    static belongsTo = [
//            User,
//            Hotel,
//            AdventureActivity
//    ]

    static constraints = {
        streetAddress blank: false
        country blank: false
        state blank: false
        zipCode blank: false
        landmark blank: true, nullable: true
    }

    static  mapping = {
        streetAddress sqlType: "text"
//        country defaultValue: 'INDIA'
        landmark nullable:true
    }
}
