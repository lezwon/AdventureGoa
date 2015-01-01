package com.adventuregoa

import grails.plugin.springsecurity.annotation.Secured

@Secured("IS_AUTHENTICATED_REMEMBERED")
class HomeController {

    def springSecurityService


    def index() {
        def username = springSecurityService.currentUser.username
        redirect uri: "/$username/home"
    }

    @Secured("IS_AUTHENTICATED_REMEMBERED")
    def home(){
        render params.username
    }
}
