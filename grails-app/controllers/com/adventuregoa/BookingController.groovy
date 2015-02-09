package com.adventuregoa

import adventuregoa.DomainClassPropertiesService
import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(["ROLE_USER","ROLE_ADMIN"])
@Transactional(readOnly = true)
class BookingController {

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


        if (bookingInstance.hasErrors()) {
            respond bookingInstance.errors, view: 'create'
            return
        }

        bookingInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'booking.label', default: 'Booking'), bookingInstance.id])
                redirect bookingInstance
            }
            '*' { respond bookingInstance, [status: CREATED] }
        }
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
}
