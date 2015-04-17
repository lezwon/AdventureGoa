package adventuregoa

import grails.transaction.Transactional

@Transactional
class DateGeneratorService {

    static Calendar calendar = Calendar.getInstance()
    static Date startDate
    static Date  endDate
    static def random = new Random()

    public static Date startDate() {
        int number = random.nextInt(40)+1
        calendar.add(Calendar.DAY_OF_YEAR, number)
        return startDate = calendar.getTime()
    }

    public static Date endDate(){
        calendar.setTime(startDate)
        int number = random.nextInt(40)+1
        calendar.add(Calendar.DAY_OF_YEAR, number)
        return endDate = calendar.getTime()
    }

    public static birthDate(){
        def calendar = Calendar.getInstance()
        calendar.add(Calendar.YEAR,-18);
        return calendar.getTime()
    }

    public static getDate(int day, int month, int year){
        def calendar = Calendar.getInstance()
        calendar.set(year,month,day,0,0,0);
        return calendar.getTime()
    }
}
