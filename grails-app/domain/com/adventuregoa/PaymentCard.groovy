package com.adventuregoa

class PaymentCard extends Base{

    long cardNumber
    String cardName
    Date expiry
    String type

    static belongsTo = [user:User]

    static constraints = {
        cardNumber creditCard: true
    }
}
