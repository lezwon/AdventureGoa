package com.adventuregoa

class PaymentCard {

    long cardNumber
    String cardName
    Date expiry
    String type

    static belongsTo = [User]

    static constraints = {
        cardNumber creditCard: true
    }
}
