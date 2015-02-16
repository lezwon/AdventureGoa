package com.adventuregoa

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AddressController {

    def springSecurityService


    static allowedMethods = [ajaxUpdate: "POST"]

    @Transactional
    @Secured(["IS_AUTHENTICATED_REMEMBERED"])
    def ajaxUpdate(Address address){

        User user = springSecurityService.currentUser as User

        if(address.hasErrors()){
            render address.errors as JSON
            return
        }

        try{
            address.save()
            user.address = address
            user.save(failOnError: true,flush: true)
        }catch (e){
            e.printStackTrace()
            render message(code: "default.update.error")
            return
        }

        render 1
    }

}
