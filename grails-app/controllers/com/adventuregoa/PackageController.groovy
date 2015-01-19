package com.adventuregoa

import adventuregoa.DomainClassPropertiesService
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
        respond packages,model: [fields:fields]
    }

    def show(Package packageInstance) {
        respond packageInstance
    }

    def create() {
        respond new Package(params)
    }

    @Transactional
    def save(Package packageInstance) {
        if (packageInstance == null) {
            notFound()
            return
        }

        if (packageInstance.hasErrors()) {
            respond packageInstance.errors, view: 'create'
            return
        }

        packageInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'package.label', default: 'Package'), packageInstance.id])
                redirect packageInstance
            }
            '*' { respond packageInstance, [status: CREATED] }
        }
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
