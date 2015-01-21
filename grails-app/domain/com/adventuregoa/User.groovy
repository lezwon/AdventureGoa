package com.adventuregoa

class User extends Base{

	String firstName
	String lastName
	String phone
	Date dob
	Address address

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
//	  	address:Address,
		paymentCard:PaymentCard
	]

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false, display: false
		email blank: false
		booking display:false
		address blank: true, nullable: true
		paymentCard blank:true, nullable: true
	}

	static mapping = {
		password column: '`password`'
//		address defaultValue: null
		paymentCard defaultValue: null
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

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}
}
