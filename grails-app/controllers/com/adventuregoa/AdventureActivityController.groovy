package com.adventuregoa

import adventuregoa.DomainClassPropertiesService
import adventuregoa.FileUploadService
import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured("ROLE_ADMIN")
class AdventureActivityController {

//    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def index() {
        def adventureActivities = AdventureActivity.list()
        def fields = DomainClassPropertiesService.getStructure(AdventureActivity.class)
        render view: "index", model: [fields:fields, adventureActivities: adventureActivities]
    }

    def create() {
        respond new AdventureActivity(params)
    }

    @Transactional
    def save(AdventureActivity adventureActivityInstance) {

        adventureActivityInstance.address = new Address(params.address as HashMap)


        String contextPath = servletContext.getRealPath('/') //get server root path
        def imageUploadSuccess = FileUploadService.uploadFile(adventureActivityInstance,params,contextPath) //upload image successful


        //name of package
        String name = adventureActivityInstance.name

        //if has errors

        adventureActivityInstance.validate()
        adventureActivityInstance.address.validate()

        if(adventureActivityInstance.hasErrors()|| adventureActivityInstance.address.hasErrors()){
            if(imageUploadSuccess){ //delete file
                FileUploadService.deleteFile(adventureActivityInstance,contextPath)
            }

            render model: [adventureActivityInstance:adventureActivityInstance], view: 'create'
            return
        }

        try {
            //save package
            adventureActivityInstance.address.save(failOnError: true)
            adventureActivityInstance.save(failOnError: true)

        } catch (Exception e) {
            //if save not successfull
            e.printStackTrace()
            flash.message = message(code: "databaseQuery.failed", args: [actionName])
        }

        //successfully created
        flash.message = message(code: "com.adventuregoa.create", args: ['AdventureActivity',name])

        //show package index
        redirect(action: "index")
    }

    def edit(AdventureActivity adventureActivityInstance) {
        respond adventureActivityInstance
    }

    @Transactional
    def update(AdventureActivity adventureActivityInstance) {
        def imageUploadSuccess =false;

        if (adventureActivityInstance == null) {
            notFound()
            return
        }

        String contextPath = servletContext.getRealPath('/') //get server root path

        if(params.image && params.image.size){
            imageUploadSuccess = FileUploadService.updateFile(adventureActivityInstance,params,contextPath)
        }

        adventureActivityInstance.clearErrors()
        adventureActivityInstance.validate()
        adventureActivityInstance.address.validate()

        if (adventureActivityInstance.hasErrors()|| adventureActivityInstance.address.hasErrors()) {

            if(imageUploadSuccess){ //delete file
                FileUploadService.deleteFile(adventureActivityInstance,contextPath)
            }

            render model: [adventureActivityInstance: adventureActivityInstance], view: 'edit'
            return
        }

        try {
            //save package
            adventureActivityInstance.save(failOnError: true)

        } catch (Exception e) {
            //if save not successfull
            e.printStackTrace()
            flash.message = message(code: "databaseQuery.failed", args: [actionName])
            render(view: "index")
            return
        }


        flash.message = message(code: 'default.updated.message', args: ['Package', adventureActivityInstance.id])
        redirect action: "index"

    }

    @Transactional
    def delete(AdventureActivity adventureActivityInstance) {

        if (adventureActivityInstance == null) {
            notFound()
            return
        }

        adventureActivityInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AdventureActivity.label', default: 'AdventureActivity'), adventureActivityInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'adventureActivity.label', default: 'AdventureActivity'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def search(){
        String search = params.string
        def fields = DomainClassPropertiesService.getStructure(AdventureActivity.class)
        def results = AdventureActivity.findAllByNameLike("%$search%")
        render(view: "index", model: ["fields":fields, adventureActivities: results, string: search])
    }

    @Secured("IS_AUTHENTICATED_ANONYMOUSLY")
    def display(){
        respond AdventureActivity.list()
    }

    @Secured("IS_AUTHENTICATED_ANONYMOUSLY")
    def show(AdventureActivity adventureActivityInstance) {
        respond adventureActivityInstance
    }
}
