  date myBirthDate = date.newInstance(1985, 11, 1);
        system.debug('my birthday is ' + myBirthDate);

        integer year = myBirthDate.year();
        integer month = myBirthDate.month();
        integer day = myBirthDate.day();
        integer sum = year + month + day;

        system.debug('the total of my birth year, month and day is ' + sum);

        date marieC = DATE.newInstance(1867, 11, 7);

        date today = date.today();
        integer daysBetween1 = marieC.daysBetween(today);
        integer yearsBetween = daysBetween1/365;

        system.debug(yearsBetween);
        boolean leapYear = date.isLeapYear(1867);
        system.debug('Is her birthday leap year? ' + leapYear);