package com.adventuregoa

class User{

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

	static hasOne = [paymentCard:PaymentCard, address:Address]
	static hasMany = [booking: Booking]
	static belongsTo = [Address]

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false, display: false
		email blank: false
		booking display:false
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
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}
}
