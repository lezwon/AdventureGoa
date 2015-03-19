package com.adventuregoa

class PaymentCard extends Base{

    String cardNumber
    String cvv
    String cardName
    Date expiry
    String type

    static belongsTo = [User]

    static constraints = {
        cardNumber creditCard: true
        cvv size: 3..3, shared: "number"
        expiry shared: "currentMonth"
    }
}
