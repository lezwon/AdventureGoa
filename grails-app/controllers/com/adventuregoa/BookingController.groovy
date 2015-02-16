package com.adventuregoa

import adventuregoa.DomainClassPropertiesService
import grails.plugin.springsecurity.annotation.Secured

import javax.servlet.http.Cookie
import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured("IS_AUTHENTICATED_REMEMBERED")
@Transactional(readOnly = true)
class BookingController {

    def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Secured("ROLE_ADMIN")
    def index() {
        def fields = DomainClassPropertiesService.getStructure(Booking.class)
        respond Booking.list(), model: [fields: fields]
    }

    /*CUSTOMER SIDE*/

    def show(Booking bookingInstance) {
        respond bookingInstance
    }

    def create() {
        respond new Booking(params), model:[packageInstanceList:Package.list()]
    }

    @Transactional
    def save(Booking bookingInstance) {
        if (bookingInstance == null) {
            notFound()
            return
        }

        bookingInstance.startDate = new SimpleDateFormat("yyyy-MM-dd").parse(params.startDate as String)

        bookingInstance.clearErrors()
        bookingInstance.validate()

        if (bookingInstance.hasErrors()) {
            render view: "create", model: [packageInstanceList: Package.list(), bookingInstance: bookingInstance]
            return
        }

        bookingInstance.save flush: true

        Cookie domainUrlCookie = new Cookie("domainUrl",g.createLink(controller: "ticket", action: "generateTickets", id: bookingInstance.id) as String);
        domainUrlCookie.maxAge = 60*60
        response.addCookie(domainUrlCookie)

        def user = User.get(springSecurityService.currentUser.id as int)
        render(view: "checkout", model: [bookingInstance:bookingInstance, userInstance: user])
    }

    def edit(Booking bookingInstance) {
        respond bookingInstance
    }

    @Transactional
    def update(Booking bookingInstance) {
        if (bookingInstance == null) {
            notFound()
            return
        }

        if (bookingInstance.hasErrors()) {
            respond bookingInstance.errors, view: 'edit'
            return
        }

        bookingInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Booking.label', default: 'Booking'), bookingInstance.id])
                redirect bookingInstance
            }
            '*' { respond bookingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Booking bookingInstance) {

        if (bookingInstance == null) {
            notFound()
            return
        }

        bookingInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Booking.label', default: 'Booking'), bookingInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'booking.label', default: 'Booking'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }


    def success(Booking bookingInstance){

        if(bookingInstance.bookingStatus != "Tickets Generated" || bookingInstance.paymentStatus != "Paid"){
            notFound();
            return
        }

        flash.message = message(code: "booking.successful");
        render(view: "success", model: [bookingInstance:bookingInstance])
    }
}
