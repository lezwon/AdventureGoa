package com.adventuregoa

import adventuregoa.DomainClassPropertiesService
import adventuregoa.FileUploadService
import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured("ROLE_ADMIN")
@Transactional(readOnly = true)
class HotelController {

//    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        def fields = DomainClassPropertiesService.getStructure(Hotel.class)
        def hotels = Hotel.list()
        render view: "index", model: ["fields":fields, "hotels": hotels]
    }


    def create() {
        respond new Hotel(params)
    }

    @Transactional
    def save(Hotel hotelInstance) {
        if (hotelInstance == null) {
            notFound()
            return
        }

        hotelInstance.address = new Address(params.address as HashMap)

        String contextPath = servletContext.getRealPath('/') //get server root path
        def imageUploadSuccess = FileUploadService.uploadFile(hotelInstance,params,contextPath) //upload image successful


        //name of package
        String name = hotelInstance.name

        //if has errors
        hotelInstance.validate()
        hotelInstance.address.validate()

        if(hotelInstance.hasErrors() || hotelInstance.address.hasErrors()){
            if(imageUploadSuccess){ //delete file
                FileUploadService.deleteFile(hotelInstance,contextPath)
            }

            render model: [
                    hotelInstance:hotelInstance
            ],
                    view: "create"
            return
        }

        try {
            //save package
            hotelInstance.address.save(failOnError: true)
            hotelInstance.save(failOnError: true)

        } catch (Exception e) {
            //if save not successfull
            e.printStackTrace()
            flash.message = message(code: "databaseQuery.failed", args: [actionName])
        }

        //successfully created
        flash.message = message(code: "com.adventuregoa.hotel.create", args: [name])

        //show package index
        redirect(action: "index")
    }

    def edit(Hotel hotelInstance) {
        respond hotelInstance
    }

    @Transactional
    def update(Hotel hotelInstance) {

        def imageUploadSuccess = false

        if (hotelInstance == null) {
            notFound()
            return
        }

        String contextPath = servletContext.getRealPath('/') //get server root path

        if(params.image.size != 0){
            imageUploadSuccess = FileUploadService.updateFile(hotelInstance,params,contextPath)
        }

        hotelInstance.clearErrors()
        hotelInstance.validate()
        hotelInstance.address.validate()

        if (hotelInstance.hasErrors() || hotelInstance.address.hasErrors()) {

            if(imageUploadSuccess){ //delete file
                FileUploadService.deleteFile(hotelInstance,contextPath)
            }

            render model:[hotelInstance:hotelInstance], view: 'edit'
            return
        }

        try {
            //save package
            hotelInstance.save(failOnError: true)

        } catch (Exception e) {
            //if save not successfull
            e.printStackTrace()
            flash.message = message(code: "databaseQuery.failed", args: [actionName])
            render(view: "index")
            return
        }


        flash.message = message(code: 'default.updated.message', args: ['Hotel', hotelInstance.id])
        redirect action: "index"

    }

    @Transactional
    def delete(Hotel hotelInstance) {

        if (hotelInstance == null) {
            notFound()
            return
        }

        hotelInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Hotel.label', default: 'Hotel'), hotelInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'hotel.label', default: 'Hotel'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def search(){
        String search = params.string
        def fields = DomainClassPropertiesService.getStructure(Hotel.class)
        def results = Hotel.findAllByNameLike("%$search%")
        render(view: "index", model: ["fields":fields, hotels: results, string: search])
    }

    @Secured("IS_AUTHENTICATED_ANONYMOUSLY")
    def display(){
        respond Hotel.list()
    }

    @Secured("IS_AUTHENTICATED_ANONYMOUSLY")
    def show(Hotel hotelInstance) {
        respond hotelInstance
    }
}
