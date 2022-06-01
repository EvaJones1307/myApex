public class DateTimeMethodsDemo {
    public void calculateAgeInMonths() {
date birthDate = date.newInstance(1985, 11, 1);
//todays date
date todayDate1 = date.today();
//calculate month difference in between two dates
integer ageInMonths = birthDate.monthsBetween(todayDate1);
system.debug('age in months=' + ageInMonths);

integer ageInDays = birthDate.daysBetween(todayDate1);
system.debug('age in days=' + ageInDays);

//subscription start and end date. it will be ended in 1000 days
date subscriptionStartDate = date.today();
date subscriptionEndDate = subscriptionStartDate.addDays(1000);
system.debug('susbscription end date year is ' + subscriptionEndDate);

integer endDateYear = subscriptionEndDate.year();
system.debug('subscription end date year is ' + endDateYear);

integer endDateMonth = subscriptionEndDate.month();
system.debug('subscription end date month is ' + endDateMonth);
    }

public void printOfferEndDateTime(){
    Datetime dtNow = Datetime.now();
    //calculate datetime after 51 hours

    Datetime dtOfferEnd = dtNow.addHours(51);
    system.debug('offer will end on ' + dtOfferEnd);

    date offerEndDate = dtOfferEnd.date();
        system.debug('offer end date is ' + offerEndDate);

}
    

public void experience(){
//calculate the experience of an employee with the starting date.
date dateOfJoin = date.newInstance(2008, 9, 1);
//todays date
date today = date.today();
//calculate the experience 
integer daysBetween = dateOfJoin.daysBetween(today);
system.debug('Experience days==>' + daysBetween);
    }
}
