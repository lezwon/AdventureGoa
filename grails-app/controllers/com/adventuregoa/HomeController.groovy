package com.adventuregoa

import grails.plugin.springsecurity.annotation.Secured

class HomeController {

    @Secured("IS_AUTHENTICATED_REMEMBERED")
    def index(params) {
        render("Wassup $params.username")
    }
}
