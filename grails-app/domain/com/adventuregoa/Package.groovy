package com.adventuregoa

class Package extends Base{

    String name
    String description
    String image
    Date startDate
    Date endDate
    int price
    int capacity

    int duration
    String shortDescription


    static hasMany = [
            booking:Booking,
            hotels:Hotel,
            adventureActivities:AdventureActivity
    ]


    static  mapping = {
        description sqlType: "text"
    }

    static constraints = {
        name blank: false, unique: true
        description blank: false, maxSize: 500
        image blank: false, nullable: false
        startDate min: new Date()
        capacity min: 1, max: 500
        endDate validator: { val, obj, errors ->
            if (val.before(obj.startDate))
                errors.rejectValue('endDate', 'com.adventuregoa.Package.endDate.min.error')
        }
    }


    def beforeInsert(){
        long diff = Math.abs(this.startDate.getTime() - this.endDate.getTime());
        this.duration = diff/(24*60*60*1000)
    }
}
