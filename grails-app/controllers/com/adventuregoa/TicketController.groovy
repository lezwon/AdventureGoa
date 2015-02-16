package com.adventuregoa

import adventuregoa.DomainClassPropertiesService
import adventuregoa.TicketGeneratorService
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured("IS_AUTHENTICATED_REMEMBERED")
class TicketController {

    def springSecurityService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        def tickets = Ticket.list()
        def fields = DomainClassPropertiesService.getStructure(Ticket.class)
        render view: "index", model: [fields:fields, tickets: tickets]
    }

    def show(Ticket ticketInstance) {
        respond ticketInstance
    }

    def create() {
        respond new Ticket(params)
    }

    @Transactional
    def save(Ticket ticketInstance) {
        if (ticketInstance == null) {
            notFound()
            return
        }

        if (ticketInstance.hasErrors()) {
            respond ticketInstance.errors, view: 'create'
            return
        }

        ticketInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'ticket.label', default: 'Ticket'), ticketInstance.id])
                redirect ticketInstance
            }
            '*' { respond ticketInstance, [status: CREATED] }
        }
    }

    def edit(Ticket ticketInstance) {
        respond ticketInstance
    }

    @Transactional
    def update(Ticket ticketInstance) {
        if (ticketInstance == null) {
            notFound()
            return
        }

        if (ticketInstance.hasErrors()) {
            respond ticketInstance.errors, view: 'edit'
            return
        }

        ticketInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Ticket.label', default: 'Ticket'), ticketInstance.id])
                redirect ticketInstance
            }
            '*' { respond ticketInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Ticket ticketInstance) {

        if (ticketInstance == null) {
            notFound()
            return
        }

        ticketInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Ticket.label', default: 'Ticket'), ticketInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        render(status: NOT_FOUND,"Invalid Page")
    }


    @Transactional
    def generateTickets(Booking bookingInstance){
        User user = springSecurityService.currentUser as User
        if(!user.booking.contains(bookingInstance)){
            notFound();
            return
        }

        if(bookingInstance.paymentStatus != "Paid"){
            render("The amount for this booking isn't paid!")
            return
        }

        TicketGeneratorService.generate(bookingInstance);
        redirect(controller: "booking", action: "success", id: bookingInstance.id)
    }

    def printTickets(Booking bookingInstance){
        render(view: "printTickets", model: [ticketInstanceList: bookingInstance.tickets])
    }
}
