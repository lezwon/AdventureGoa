package com.adventuregoa

import adventuregoa.DomainClassPropertiesService
import adventuregoa.FileUploadService
import grails.plugin.springsecurity.annotation.Secured
import org.apache.tomcat.jni.File
import org.apache.tools.ant.taskdefs.Pack

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured("ROLE_ADMIN")
@Transactional(readOnly = true)
class PackageController {

    static allowedMethods = [save: ['POST'], delete: ['DELETE'], update: ['POST'], search: ['POST']]

    def index() {
        def packages = Package.list()
        def fields = DomainClassPropertiesService.getStructure(Package.class)
        render view: "index", model: [fields:fields, packages: packages]
    }

    def create() {
        render model: [
                hotels: Hotel.list(),
                adventureActivities: AdventureActivity.list(),
                packageInstance: new Package()
        ], view: "create"
    }

    @Transactional
    def save(Package packageInstance) {

        String contextPath
        String name
        def imageUploadSuccess

        /*Image Upload*/
        contextPath = servletContext.getRealPath('/') //get server root path
        imageUploadSuccess = FileUploadService.uploadFile(packageInstance,params,contextPath) //upload image successful

        /*Hotels Addition*/
//        hotelsList = new ArrayList()

        if(params.containsKey("hotel[]")){
            params.get("hotel[]").each {
//                hotelsList.add Hotel.findById(it as int)
                packageInstance.addToHotels(Hotel.findById(it as int))
            }
        }

        /*Adventure Activities Addition*/
//        adventureActivitityList = new ArrayList()

        if(params.containsKey("adventureActivity[]")){
            params.get("adventureActivity[]").each {
//                adventureActivitityList.add AdventureActivity.findById(it as int)
                packageInstance.addToAdventureActivities(AdventureActivity.findById(it as int))
            }
        }

        //name of package
        name = packageInstance.name

        //if has errors
        packageInstance.clearErrors()
        packageInstance.validate()

        if(packageInstance.hasErrors()){
            if(imageUploadSuccess){ //delete file
                FileUploadService.deleteFile(packageInstance,contextPath)
            }

            render view: 'create', model: [
                    packageInstance:packageInstance,
                    hotels: Hotel.list(),
                    adventureActivities: AdventureActivity.list(),
            ]
            return
        }

        try {
            //save package
            packageInstance.save(failOnError: true)

            /*Saving Adventures*/


            /*Saving Hotels*/


        } catch (Exception e) {
            //if save not successfull
            e.printStackTrace()
            flash.message = message(code: "databaseQuery.failed", args: [actionName])

            if(imageUploadSuccess){ //delete file
                FileUploadService.deleteFile(packageInstance,contextPath)
            }

            render view: 'create', model: [
                    packageInstance:packageInstance,
                    hotels: Hotel.list(),
                    adventureActivities: AdventureActivity.list(),
            ]
            return
        }

        //successfully created
        flash.message = message(code: "com.adventuregoa.package.create", args: [name])

        //show package index
        redirect(action: "index")

    }

    def edit(Package packageInstance) {
        respond packageInstance, model:  [hotels: Hotel.list(), adventureActivities: AdventureActivity.list()]
    }


    @Transactional
    def update(Package packageInstance) {

        String contextPath
        def imageUploadSuccess = false

        if (packageInstance == null) {
            notFound()
            return
        }

        /*Image Upload*/
        contextPath = servletContext.getRealPath('/') //get server root path

        if(params.image.size != 0){
            imageUploadSuccess = FileUploadService.updateFile(packageInstance,params,contextPath)
        }

        //delete all asscoiations
        Package oldPackageInstance = Package.get(params.id as int)
        oldPackageInstance.hotels.clear()
        oldPackageInstance.adventureActivities.clear()
        oldPackageInstance.save(flush: true)

        /*Hotels Addition*/
        if(params.containsKey("hotel[]")){
            params.get("hotel[]").each {
                packageInstance.addToHotels(Hotel.findById(it as int))
            }
        }

        /*Adventure Activities Addition*/
        if(params.containsKey("adventureActivity[]")){
            params.get("adventureActivity[]").each {
                packageInstance.addToAdventureActivities(AdventureActivity.findById(it as int))
            }
        }

        packageInstance.clearErrors()
        packageInstance.validate()

        if (packageInstance.hasErrors()) {
            if(imageUploadSuccess){ //delete file
                FileUploadService.deleteFile(packageInstance,contextPath)
            }

            render view: 'edit', model: [
                    packageInstance:packageInstance,
                    hotels: Hotel.list(),
                    adventureActivities: AdventureActivity.list(),
            ]
            return false
        }

        try {

            //save package
            packageInstance.save(failOnError: true, flush: true)

        } catch (Exception e) {
            //if save not successfull
            e.printStackTrace()
            flash.message = message(code: "databaseQuery.failed", args: [actionName])

            if(imageUploadSuccess){ //delete file
                FileUploadService.deleteFile(packageInstance,contextPath)
            }

            render view: 'edit', model: [
                    packageInstance:packageInstance,
                    hotels: Hotel.list(),
                    adventureActivities: AdventureActivity.list(),
            ]
            return
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

        String contextPath = servletContext.getRealPath('/') //get server root path
        FileUploadService.deleteFile(packageInstance,contextPath)
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

    def search(){
        String search = params.string
        def fields = DomainClassPropertiesService.getStructure(Package.class)
        def results = Package.findAllByNameOrDescriptionLike("%$search%","%$search%")
        render(view: "index", model: ["fields":fields, packages: results, string: search])
    }


    /*CUSTOMER SIDE*/

//    @Secured(["ROLE_USER","ROLE_ADMIN"])
    @Secured("IS_AUTHENTICATED_ANONYMOUSLY")
    def display(){

        respond(Package.list())
    }

    @Secured("IS_AUTHENTICATED_ANONYMOUSLY")
    def show(Package packageInstance) {
        respond packageInstance
    }
}
