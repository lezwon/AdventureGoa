package com.adventuregoa

/**
 * Created by Lezwon on 21-01-2015.
 */
abstract class Base {
    Date createdAt
    Date updatedAt

    def beforeInsert(){
        createdAt = new Date()
    }

    def beforeUpdate(){
        updatedAt = new Date()
    }
}
