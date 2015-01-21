import com.adventuregoa.Role
import com.adventuregoa.User
import com.adventuregoa.UserRole


class BootStrap {

    def fakerService;

    def init = { servletContext ->

        def users = [
                [
                        username: "lezwon",
                        password: "password",
                        email   : "lezwon@gmail.com",
                        firstName: "Lezwon",
                        lastName: "Castellino",
                        phone: 9405334893,
                        dob: new Date(1993,12,8)
                ],
                [
                        username: "lester",
                        password: "password",
                        email   : "lester@gmail.com",
                        firstName: "Lester",
                        lastName: "Castellino",
                        phone: 2342354254,
                        dob: new Date(1989,11,26)
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


        /*Faker Users*/


        for ( i in 0..9 ) {
            def tempUser = new User(
                username: fakerService.userName(),
                password: fakerService.letterify("????????"),
                email   : fakerService.email(),
                firstName: fakerService.firstName(),
                lastName: fakerService.lastName(),
                phone: fakerService.phoneNumber('##########'),
                dob: new Date()
            ).save();
            UserRole.create(tempUser, roleUser)
        }


    }
    def destroy = {
    }
}
