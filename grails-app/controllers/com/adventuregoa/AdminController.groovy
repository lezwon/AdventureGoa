package com.adventuregoa

import grails.plugin.springsecurity.annotation.Secured
import org.codehaus.groovy.grails.commons.DefaultGrailsDomainClass

@Secured("ROLE_ADMIN")
class AdminController {


    def index() {
//        render("Hello");
    }

    def users(){
//        def fields = User.declaredFields
//        print fields

        def d = new DefaultGrailsDomainClass(User.class)
        def fields = d.persistentProperties.reverse() as Object[]

        def users = User.list()

        render view: "users", model: ["fields":fields, "users": users]
    }
}