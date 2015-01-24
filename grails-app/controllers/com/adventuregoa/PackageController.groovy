package com.adventuregoa

import adventuregoa.DomainClassPropertiesService
import adventuregoa.FileUploadService
import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured("ROLE_ADMIN")
@Transactional(readOnly = true)
class PackageController {

//    static allowedMethods = [save: ['POST'], delete: ['DELETE'], update: ['PUT'], search: ['POST']]

    def index() {
        def packages = Package.list()
        def fields = DomainClassPropertiesService.getStructure(Package.class)
        render view: "index", model: [fields:fields, packages: packages]
    }

    def show(Package packageInstance) {
        respond packageInstance
    }

    def create() {
        respond new Package(params)
    }

    @Transactional
    def save() {

        Package packageInstance = new Package(params)
        String contextPath = servletContext.getRealPath('/') //get server root path
        def imageUploadSuccess = FileUploadService.uploadFile(packageInstance,params,contextPath) //upload image successful


        //name of package
        String name = packageInstance.name

        //if has errors
        packageInstance.clearErrors()
        packageInstance.validate()
        if(packageInstance.hasErrors()){
            if(imageUploadSuccess){ //delete file
                FileUploadService.deleteFile(packageInstance,contextPath)
            }

            respond packageInstance.errors, view: 'create'
            return
        }

        try {
            //save package
            packageInstance.save(failOnError: true)

        } catch (Exception e) {
            //if save not successfull
            e.printStackTrace()
            flash.message = message(code: "databaseQuery.failed", args: [actionName])
        }

        //successfully created
        flash.message = message(code: "com.adventuregoa.package.create", args: [name])

        //show package index
        redirect(action: "index")

    }

    def edit(Package packageInstance) {
        respond packageInstance
    }

    @Transactional
    def update(Package packageInstance) {

        def imageUploadSuccess =false;

        if (packageInstance == null) {
            notFound()
            return
        }

        String contextPath = servletContext.getRealPath('/') //get server root path

        if(params.image.size != 0){
            imageUploadSuccess = FileUploadService.updateFile(packageInstance,params,contextPath)
        }

        packageInstance.clearErrors()
        packageInstance.validate()

        if (packageInstance.hasErrors()) {

            if(imageUploadSuccess){ //delete file
                FileUploadService.deleteFile(packageInstance,contextPath)
            }

            respond packageInstance.errors, view: 'edit'
            return
        }

        try {
            //save package
            packageInstance.save(failOnError: true)

        } catch (Exception e) {
            //if save not successfull
            e.printStackTrace()
            flash.message = message(code: "databaseQuery.failed", args: [actionName])
        }


        flash.message = message(code: 'default.updated.message', args: ['Package', packageInstance.id])
        redirect action: "index"

//        respond packageInstance, [status: OK]

    }

    @Transactional
    def delete(Package packageInstance) {

        if (packageInstance == null) {
            notFound()
            return
        }

        packageInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Package.label', default: 'Package'), packageInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'package.label', default: 'Package'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
