package com.adventuregoa

import adventuregoa.DomainClassPropertiesService
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

import java.text.SimpleDateFormat

@Secured("ROLE_ADMIN")
class UserController extends grails.plugin.springsecurity.ui.UserController {

    static scaffold = false
    static defaultAction = "index"

    static allowedMethods = [
            save: ['POST'],
            delete: ['DELETE'],
            update: ['PUT'],
            search: ['POST'],
            ajaxUpdate: ['POST']
    ]

    def index(){
        def fields = DomainClassPropertiesService.getStructure(User.class)

        def users = User.list()

        render view: "index", model: ["fields":fields, "users": users]
    }

    def create(User user){
        render(model: [user: user, roles: Role.list()], view: "create")
    }

    def save(User user){

        def userRoles = new ArrayList()

        if(params.containsKey("role[]")){
            params.get("role[]").each {
                userRoles.add Role.findById(it as int)
            }
        }

        if (user.hasErrors()) {
//            respond view: "create", user.errors, model: [roles: Role.list()]
            render view: "create", model: [user:user, roles: Role.list(), userRoles: userRoles]
            return
        }

        try {
            user.save(failOnError: true)
            flash.message = message(code: "com.adventuregoa.user.create")

            if (!userRoles.isEmpty())
            {
                userRoles.each {
                    UserRole.create(user,it as Role,true)
                }
            }

            redirect(action: "index")
        }catch (Exception e){
            e.printStackTrace()
            flash.message = message(code: "databaseQuery.failed", args:[actionName.capitalize()])
            render(view: "create",model: [user:user])
        }
    }

    def edit(User user){
        def userRoles = UserRole.findAllByUser(user)*.role
        render(model: [user: user, roles: Role.list(), userRoles: userRoles], view: "edit")
    }

    def update(User user){

        def userRoles = new ArrayList()

        if(params.containsKey("role[]")){
            params.get("role[]").each {
                userRoles.add Role.findById(it as int)
            }
        }

        if (user.hasErrors()) {
            render view: "edit", model: [user:user, roles: Role.list(), userRoles: userRoles]
            return
        }


        try {
            String name = user.username

            user.save(flush: true,failOnError: true)

            //add roles
            UserRole.findAllByUser(user)*.delete(flush: true)

            if(params.containsKey("role[]")){
                params.get("role[]").each {
                    UserRole.create(user,Role.findById(it as int),true)
                }
            }

            //success
            flash.message = message(code: "com.adventuregoa.user.update", args: [name])
            redirect(action: "index")
        } catch (Exception e) {
            e.printStackTrace()
            flash.message = message(code: "databaseQuery.failed", args: [actionName])
            respond(view: "edit")
        }
    }

    def delete(User user){
        try{
            def name = user.username
            try {
                UserRole.findByUser(user).delete()
            }
            catch(Exception e){
                log.info("User dosent have a role")
                e.printStackTrace()
            } finally {
                user.delete(flush: true)
                flash.message = message(code: "com.adventuregoa.user.delete", args: [name])
                redirect(action: "index")
            }
        }
        catch (Exception e){
            e.printStackTrace()
            flash.message = "Error"
            render("Error")
        }
    }

    def search(){

        def fields = DomainClassPropertiesService.getStructure(User.class)

        def results = User.findAll("from User where username like '%$params.string%' or email like '%$params.string%' ")
        render(view: "index", model: ["fields":fields, users: results, string: params.string])
    }

    @Secured(['IS_AUTHENTICATED_REMEMBERED'])
    def ajaxUpdate(User user){

        if(user.id != springSecurityService.currentUser.id){
            return false
        }

//        user.dob = new SimpleDateFormat("yyyy-MM-dd").format(params.dob)

        user.clearErrors()
        user.validate()

        if (user.hasErrors()) {
            render user.errors as JSON
            return
        }

        try{
            user.save(failOnError: true, flush: true)
        }catch (e){
            e.printStackTrace()
            render message(code: "default.update.error") as JSON
        }

        render 1
    }

}
