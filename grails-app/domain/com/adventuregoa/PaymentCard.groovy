package com.adventuregoa

class PaymentCard {

    long cardNumber
    String cardName
    Date expiry
    String type

    static hasOne = [user:User]
    static belongsTo = [User]

    static constraints = {
        cardNumber creditCard: true
    }
}
