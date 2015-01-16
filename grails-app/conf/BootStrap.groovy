import com.adventuregoa.Role
import com.adventuregoa.User
import com.adventuregoa.UserRole

class BootStrap {

    def init = { servletContext ->

        def users = [
                [
                        username: "lezwon",
                        password: "password",
                        email   : "lezwon@gmail.com"
                ],
                [
                        username: "lester",
                        password: "password",
                        email   : "lester@gmail.com"
                ]
        ]


        def roleUser = Role.findByAuthority("ROLE_USER") ?: new Role(authority: "ROLE_USER");
        roleUser.save()

        def roleAdmin = Role.findByAuthority("ROLE_ADMIN") ?: new Role(authority: "ROLE_ADMIN");
        roleAdmin.save()

        users.eachWithIndex { user,index ->
            def tempUser = new User(user).save();
//            UserRole.create(tempUser, roleUser)

            index == 0 ? UserRole.create(tempUser,roleAdmin) : UserRole.create(tempUser,roleUser)
        }


    }
    def destroy = {
    }
}
