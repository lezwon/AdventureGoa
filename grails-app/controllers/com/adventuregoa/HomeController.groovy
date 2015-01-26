package com.adventuregoa

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_USER","ROLE_ADMIN"])
class HomeController {

    def springSecurityService


    def index() {
        def username = springSecurityService.currentUser.username
        redirect uri: "/$username/home"
    }

    @Secured("IS_AUTHENTICATED_REMEMBERED")
    def home(){

        def user = springSecurityService.currentUser

        if( params.username != user.username ){
            render(status: 403,'You are Unauthorized to access this page');
        }


    }
}
