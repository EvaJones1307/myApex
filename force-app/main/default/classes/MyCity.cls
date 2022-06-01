public class MyCity {
    public void cityInformation() {
        string myFavCity = 'Sarajevo';
        string myFavCountry = 'Bosnia and Herzegovina';
        system.debug('My favorite country is' + ' ' + myFavCountry + ' '
        + 'and my favorite city is '+ ' '+ myFavCity);

        date independenceDay = date.newInstance(1776, 7, 4);
        time sunrise = time.newInstance(7, 0, 0, 0);
        date today = date.today();
        date addMonths = today.addMonths(-36);

        system.debug('God bless America! Independence day is ' +independenceDay);
        system.debug('The sunrise of Dallas is ' + sunrise);
        system.debug('Todays date is ' + today);
        system.debug('36 months ago the date was ' + addMonths);

        date.myBirthDate = date.newInstance(1985, 11, 1);
        system.debug('my birthday is ' + myBirthDate);

        integer birthYear = myBirthDate.year();
        integer birthMonth = myBirthDate.month();
        integer birthdayy = myBirthDate.day();

        system.debug('the total of my birth year, month and day is ' 
        + (birthYear + birthMonth + birthdayy));

    }
     //does the sentence contain 'force' , length of string, all letters capital.
    public void stringMethod1a(){
        string developer = 'I am a salesforce developer';
        Boolean containsForce = developer.contains('force');
        integer lengthOfString =developer.length();
        string devInCaps = developer.toUpperCase();

        system.debug('Does the string contain froce==> ' + containsForce);
        system.debug('legth of the string is ==> ' + lengthOfString);
        system.debug(devInCaps);
    }
    //bugunun tarihi, bugunun tarihi ve saati ve 50 saat eklenmis hali
    public void dateMethod(){
        date today = date.today();
        system.debug('today is ' + today);
        Datetime timeDateToday = Datetime.now();
        system.debug('time and date of today is ' + timeDateToday);
        Datetime addHours = timeDateToday.addhours(50);
        system.debug('after adding 50 hours to the current time is ' + addHours);
    }
}
