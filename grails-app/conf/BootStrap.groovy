import com.adventuregoa.AdventureActivity
import com.adventuregoa.Hotel
import com.adventuregoa.Role
import com.adventuregoa.User
import com.adventuregoa.UserRole
import com.adventuregoa.Package


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
                        phone: "9405334893",
                        dob: new Date(1993,12,8)
                ],
                [
                        username: "lester",
                        password: "password",
                        email   : "lester@gmail.com",
                        firstName: "Lester",
                        lastName: "Castellino",
                        phone: "2342354254",
                        dob: new Date(1989,11,26)
                ]
        ]


        def roleUser = Role.findByAuthority("ROLE_USER") ?: new Role(authority: "ROLE_USER");
        roleUser.save()

        def roleAdmin = Role.findByAuthority("ROLE_ADMIN") ?: new Role(authority: "ROLE_ADMIN");
        roleAdmin.save()

        users.eachWithIndex { user,index ->

            try {
                def tempUser = new User(user).save(failOnError: true,flush: true);
                index == 0 ? UserRole.create(tempUser,roleAdmin) : UserRole.create(tempUser,roleUser)
            } catch (Exception e) {
                e.printStackTrace()
            }
//            UserRole.create(tempUser, roleUser)

        }


        /*Faker Users*/


        for ( i in 0..9 ) {
            try {

                def tempUser = new User(
                    username: fakerService.userName(),
                    password: fakerService.letterify("????????"),
                    email   : fakerService.email(),
                    firstName: fakerService.firstName(),
                    lastName: fakerService.lastName(),
                    phone: fakerService.phoneNumber('##########'),
                    dob: new Date()
                ).save(failOnError: true);
                UserRole.create(tempUser, roleUser)

            } catch (Exception e) {
                e.printStackTrace()
            }
        }

        /*Package records*/

        for ( i in 0..9 ) {
            try {
                new Package(
                        name: fakerService.sentence(2),
                        description: fakerService.paragraph(6),
                        image: 'http://lorempixel.com/1280/300',
                        price: Integer.parseInt(fakerService.numerify("3####"))
                ).save(failOnError: true)

            } catch (Exception e) {
                e.printStackTrace()
            }
        }


        /*Hotel records*/

        for ( i in 0..9 ) {
            try {
                new Hotel(
                        name: fakerService.sentence(2),
                        description: fakerService.paragraph(6),
                        image: 'http://lorempixel.com/1980/500',
                        price: Integer.parseInt(fakerService.numerify("8##")),
                        email: fakerService.email(),
                        phone: fakerService.phoneNumber('##########'),
                        star:  3
                ).save(failOnError: true)

            } catch (Exception e) {
                e.printStackTrace()
            }
        }


        /*AdventureActivity records*/

        for ( i in 0..9 ) {
            try {
                new AdventureActivity(
                        name: fakerService.sentence(3),
                        description: fakerService.paragraph(6),
                        image: 'http://lorempixel.com/1280/300',
                        price: Integer.parseInt(fakerService.numerify("8##")),
                        email: fakerService.email(),
                        phone: fakerService.phoneNumber('##########'),
                        duration: "30 Minutes"
                ).save(failOnError: true)

            } catch (Exception e) {
                e.printStackTrace()
            }
        }


    }
    def destroy = {
    }
}
