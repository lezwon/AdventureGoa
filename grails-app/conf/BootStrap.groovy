import com.adventuregoa.Role
import com.adventuregoa.User
import com.adventuregoa.UserRole

class BootStrap {

    def init = { servletContext ->

        def user = new User(
                username: "lezwon",
                password: "password",
                email: "lezwon@gmail.com"
        )
        user.save()

        def roleUser = Role.findByAuthority("ROLE_USER") ?: new Role(authority: "ROLE_USER");
        roleUser.save()


        UserRole.create(user,roleUser);


    }
    def destroy = {
    }
}
