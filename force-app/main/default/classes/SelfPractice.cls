public class SelfPractice {
    public void practice() {

        Datetime dt1 = Datetime.newInstance(0);
        system.debug('dt1 is ' + dt1);

        //long time

        Datetime dt1a = Datetime.newInstance(5000L);
        system.debug('dt1a = ' + dt1a);

        Long longTime = 3856364256745L;
        Datetime dt2 =Datetime.newInstance(longTime);
        system.debug('dt2 = ' + dt2);

        //canculate age in months and years
        date today = date.today();
        date birthday = date.newInstance(1994, 6, 26);
        integer ageInMonths = birthday.monthsBetween(today);
        system.debug('Her age in months is ' + ageInMonths);
       
        integer ageInYears = ageInMonths/12;
        system.debug('her  age is ' + ageInYears);

        //Total number of days remaining for the expiration of the plan
        date planEndDay = date.newInstance(2022, 12, 1);
        date planStartDay = date.newInstance(2022, 1, 1);
        
        integer daysOfExpire = planStartDay.daysBetween(planEndDay);
        system.debug('total number of days remaining for expiration is ' + daysOfExpire);


      

        }
}
