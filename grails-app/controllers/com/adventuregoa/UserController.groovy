package com.adventuregoa

import adventuregoa.AdminCheckService
import adventuregoa.DomainClassPropertiesService
import com.coderberry.faker.Faker
import grails.plugin.springsecurity.annotation.Secured
import org.codehaus.groovy.grails.commons.DefaultGrailsDomainClass

@Secured("ROLE_ADMIN")
class UserController extends grails.plugin.springsecurity.ui.UserController {

    static scaffold = false
    static defaultAction = "index"

    static allowedMethods = [
            save: ['POST'],
            delete: ['DELETE'],
            update: ['PUT'],
            search: ['POST']
    ]

    def index(){
        def fields = DomainClassPropertiesService.getStructure(User.class)

        def users = User.list()

        render view: "index", model: ["fields":fields, "users": users]
    }


    def save(User user){
        try {
            user.save(failOnError: true)
            flash.message = message(code: "com.adventuregoa.user.create")
            redirect(action: "index")
        }catch (Exception e){
            e.printStackTrace()
        }
    }

    def edit(User user){
        boolean admin = AdminCheckService.check(user)
        render(view: "edit", model: ["user":user, admin: admin])
    }

    def update(User user){
        try {
            User realUser = User.get(user.id);
            String name = realUser.username

            if(params.admin){ //check if ticked
//               if (!AdminCheckService.check(realUser))  // if not admin
               UserRole.findOrSaveByUserAndRole(realUser,Role.findByAuthority("ROLE_ADMIN"))
            }
            else{
                if (AdminCheckService.check(realUser))  // if admin
                    UserRole.remove(realUser,Role.findByAuthority("ROLE_ADMIN"))
                    UserRole.findOrSaveByUserAndRole(realUser,Role.findByAuthority("ROLE_USER"))
            }



            realUser.properties = params

            if (!realUser.save(flush: true,failOnError: true)) {
                realUser.errors.each {
                    println it
                }
            }

            flash.message = message(code: "com.adventuregoa.user.update", args: [name])
            redirect(uri: "/user/index")
        } catch (Exception e) {
            e.printStackTrace()
            render "Error"
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
}
