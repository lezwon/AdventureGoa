package com.adventuregoa

/**
 * Created by Lezwon on 21-01-2015.
 */
abstract class Base {
    Date created_at = new Date()
    Date updated_at = new Date()

    def beforeUpdate(){
        updated_at = new Date()
    }

}
