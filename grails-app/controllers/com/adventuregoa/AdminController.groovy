package com.adventuregoa

import grails.plugin.springsecurity.annotation.Secured
import org.codehaus.groovy.grails.commons.DefaultGrailsDomainClass

@Secured("ROLE_ADMIN")
class AdminController {

    static defaultAction = "home"

    def index(){
        def d = new DefaultGrailsDomainClass(User.class)
        def fields = d.persistentProperties.reverse() as Object[]
        def admins = UserRole.findAllByRole(Role.findByAuthority("ROLE_ADMIN"))*.user
        render(view: "index", model: [admins: admins, fields: fields])
    }

    def home() {
        int userCount = User.count();
        int packageCount = Package.count();
        int bookingCount = Booking.count();
        int adminCount = UserRole.findAllByRole(Role.findByAuthority("ROLE_ADMIN"))*.user.size()
        int hotelCount = Hotel.count();
        int adventureActivityCount = AdventureActivity.count();
        int ticketCount = Ticket.count();

        render view: "home", model: [
                "userCount":userCount,
                "packageCount":packageCount,
                bookingCount: bookingCount,
                hotelCount: hotelCount,
                adventureActivityCount: adventureActivityCount,
                ticketCount: ticketCount
        ]
    }
}