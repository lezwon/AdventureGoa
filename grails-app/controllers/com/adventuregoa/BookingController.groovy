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
    static allowedMethods = [save: "POST", update: "PUT", delete: "GET"]

    @Secured("ROLE_ADMIN")
    def index() {
        def fields = DomainClassPropertiesService.getStructure(Booking.class)
        respond Booking.list(), model: [fields: fields]
    }

    /*CUSTOMER SIDE*/

    def show(Booking bookingInstance) {
        respond bookingInstance
    }

    def book() {
        respond new Booking(params), model:[packageInstanceList:Package.list()]
    }

    @Transactional
    def save(Booking bookingInstance) {

        if (bookingInstance == null) {
            notFound()
            return
        }

        if(params.package == ""){
            render view: "book", model: [packageInstanceList: Package.list(), bookingInstance: bookingInstance]
            return
        }


        bookingInstance.clearErrors()
        bookingInstance.validate()

        if (bookingInstance.hasErrors()) {
            render view: "book", model: [packageInstanceList: Package.list(), bookingInstance: bookingInstance]
            return
        }

        try {
            bookingInstance.save flush: true
        } catch (e) {
            e.printStackTrace()
        }

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

        if(bookingInstance.user != springSecurityService.currentUser){
            render(status: UNAUTHORIZED, text:"Unauthorized Access");
            return
        }

        bookingInstance.delete flush: true
        flash.message = message(code: "message.booking.clear")

        redirect(controller: 'account')
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

        if(bookingInstance.bookingStatus == "Cancelled"){
            redirect(action: "cancel", id: bookingInstance.id)
            return
        }

        if(bookingInstance.bookingStatus != "Tickets Generated" || bookingInstance.paymentStatus != "Paid"){
            notFound();
            return
        }

        flash.message = message(code: "booking.successful");
        render(view: "success", model: [bookingInstance:bookingInstance])
    }

    @Transactional
    def cancel(Booking bookingInstance){
        bookingInstance.bookingStatus ="Cancelled";
        try {
            bookingInstance.save(failOnError: true, flush: true);
            Ticket.findAllByBooking(bookingInstance)*.delete();
            bookingInstance._package.capacity += bookingInstance.noOfPeople
            bookingInstance._package.save()
        } catch (e) {
            e.printStackTrace()
        }
        flash.message = message(code: "booking.cancelled");
        render(view: "cancel", model: [bookingInstance: bookingInstance]);
    }

    @Secured("ROLE_ADMIN")
    def bookings(){

        def bookingCriteria = Booking.createCriteria()
        def bookingInstanceList = bookingCriteria.list {
            def sdf = new SimpleDateFormat("dd/MM/yyyy");

            _package{
                params.fromDate ? ge("startDate",sdf.parse(params.fromDate as String)) : null
                params.toDate ? le("startDate", sdf.parse(params.toDate as String)) : null
            }

            params.bookingStatus ? eq("bookingStatus",params.bookingStatus as String): null
            params.package ? eq("_package",Package.get(params.package as int)) : null
            params.sort ? order(params.sort as String,params.order as String): null
        }

        render(view: "bookings", model: [
                bookingInstanceList: bookingInstanceList,
                packageInstanceList: Package.list()
        ])
    }

}

