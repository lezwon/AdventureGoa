package com.adventuregoa

class User extends Base{

	String firstName
	String lastName
	long phone
	Date dob

	transient springSecurityService

	String username
	String password
	String email
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static hasOne = [Address,PaymentCard]
	static hasMany = [booking: Booking]

	static transients = ['springSecurityService']

	static constraints = {
		super.constraints
		username blank: false, unique: true
		password blank: false, display: false
		email blank: false
		packages display:false
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role }
	}

	def beforeInsert() {
		super.beforeInsert()
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			super.beforeUpdate()
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}
}
