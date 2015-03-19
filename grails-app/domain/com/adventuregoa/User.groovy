package com.adventuregoa

class User extends Base{

	String firstName
	String lastName
	String phone
	Date dob
	Address address
    PaymentCard paymentCard

	transient springSecurityService

	String username
	String password
	String email
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static hasMany = [
		booking: Booking,
	]

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false, display: false
		email blank: false, email: true
		booking display:false
		address blank: true, nullable: true
		paymentCard blank:true, nullable: true
		phone(maxSize: 13, minSize: 10, shared: "number")


        firstName nullable: true
        lastName nullable: true
        phone nullable: true
        dob nullable: true
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role }
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		super.beforeUpdate()
		if (isDirty('password')) {
			encodePassword()
		}
	}

//    def afterInsert(){
//        def userRole = Role.findOrCreateByAuthority("ROLE_USER");
//
//        try {
//            print this
//            UserRole.create(this,userRole,true)
//        } catch (e) {
//            e.printStackTrace()
//            this.delete()
//        }
//    }

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}

}
