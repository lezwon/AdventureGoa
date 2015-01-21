package com.adventuregoa

import adventuregoa.DomainClassPropertiesService
import adventuregoa.FileUploadService
import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured("ROLE_ADMIN")
@Transactional(readOnly = true)
class PackageController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

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
        String contextPath = servletContext.getRealPath('/')
        String dir = FileUploadService.uploadFile(params.image,contextPath)
        if (dir)
        {
            String name = params.name
            params.image = dir

            try {
                new Package(params).save(failOnError: true)
            } catch (Exception e) {
                e.printStackTrace()
            }

            flash.message = message(code: "com.adventuregoa.package.create", args: [name])
        }
        else
        {
            flash.message = "Error"
        }

        redirect(action: "index")

    }

    def edit(Package packageInstance) {
        respond packageInstance
    }

    @Transactional
    def update(Package packageInstance) {
        if (packageInstance == null) {
            notFound()
            return
        }

        if (packageInstance.hasErrors()) {
            respond packageInstance.errors, view: 'edit'
            return
        }

        packageInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Package.label', default: 'Package'), packageInstance.id])
                redirect packageInstance
            }
            '*' { respond packageInstance, [status: OK] }
        }
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
