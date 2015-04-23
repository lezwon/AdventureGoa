import adventuregoa.DateGeneratorService
import com.adventuregoa.AdventureActivity
import com.adventuregoa.Booking
import com.adventuregoa.Hotel
import com.adventuregoa.Role
import com.adventuregoa.User
import com.adventuregoa.UserRole
import com.adventuregoa.Package


class BootStrap {

    def fakerService;
    def servletContext
    def random = new Random();

    def init = { servletContext ->

        def users = [
                [
                        username: "lezwon",
                        password: "password",
                        email   : "lezwon@gmail.com",
                        firstName: "Lezwon",
                        lastName: "Castellino",
                        phone: "9405334893",
                        dob: DateGeneratorService.getDate(8,Calendar.DECEMBER,1993)
                ],
                [
                        username: "lester",
                        password: "password",
                        email   : "lester@gmail.com",
                        firstName: "Lester",
                        lastName: "Castellino",
                        phone: "2342354254",
                        dob: DateGeneratorService.getDate(26,11,1989)
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
                    dob: DateGeneratorService.birthDate()
                ).save(failOnError: true,flush: true);
                UserRole.create(tempUser, roleUser)

            } catch (Exception e) {
                e.printStackTrace()
            }
        }




/*

        */
/*Package records*//*


        for ( i in 0..9 ) {
            try {
                new Package(
                        name: fakerService.words(2),
                        description: fakerService.paragraph(6),
                        shortDescription: fakerService.sentence(10) ,
//                        image: '/images/package/colossus-cover.jpg',
                        capacity: (random.nextInt(25)+40),
                        startDate: DateGeneratorService.startDate(),
                        endDate: DateGeneratorService.endDate(),
                        image: 'http://lorempixel.com/1920/500',
                        duration: random.nextInt(25)+15,
                        price: Integer.parseInt(fakerService.numerify("3####"))
                ).save(failOnError: true, flush: true)

            } catch (Exception e) {
                e.printStackTrace()
            }
        }


        */
/*Hotel records*//*


        for ( i in 0..9 ) {
            try {
                new Hotel(
                        name: fakerService.words(2),
                        description: fakerService.paragraph(6),
//                        image: '/images/package/colossus-cover.jpg',
                        image: 'http://lorempixel.com/1920/500',
                        price: Integer.parseInt(fakerService.numerify("8##")),
                        email: fakerService.email(),
                        phone: fakerService.phoneNumber('##########'),
                        star:  3
                ).save(failOnError: true)

            } catch (Exception e) {
                e.printStackTrace()
            }
        }


        */
/*AdventureActivity records*//*


        for ( i in 0..9 ) {
            try {
                new AdventureActivity(
                        name: fakerService.words(3),
                        description: fakerService.paragraph(6),
//                        image: '/images/package/colossus-cover.jpg',
                        image: 'http://lorempixel.com/1920/500',
                        price: Integer.parseInt(fakerService.numerify("8##")),
                        email: fakerService.email(),
                        phone: fakerService.phoneNumber('##########'),
                        duration: "30 Minutes"
                ).save(failOnError: true)

            } catch (Exception e) {
                e.printStackTrace()
            }
        }

        */
/*Hotels and Adventures to Packages records*//*

        Package.list().each { packageInstance ->
            (0..5).each{
                packageInstance.addToAdventureActivities(AdventureActivity.get(random.nextInt(10) + 1))
                packageInstance.addToHotels(Hotel.get(random.nextInt(10) + 1))
            }
            packageInstance.save()
        }


        */
/*Create Bookings*//*


        (0..5).each{
//            booking.totalPrice = booking.package.price * booking.noOfPeople
            Booking booking = new Booking();
            booking.user = User.get(random.nextInt(10) + 1)
            booking._package = Package.get(random.nextInt(10) + 1)
            booking.noOfPeople = random.nextInt(10) + 1
            booking.paymentStatus = "Paid"
            booking.bookingStatus = "Tickets Generated"
            booking.save(failOnError: true)
        }


*/


    }

    def destroy = {
        def contextPath = servletContext.getRealPath('/') //get server root path
        def imageFolder = "images/";
        def entityFolders= ["package","hotel","adventureactivity"]

        entityFolders.each {
            String absolutePath = contextPath+imageFolder+entityFolders
            File folderDir = new File(absolutePath)

            if (folderDir.exists())
                folderDir.delete()
        }
    }
}
