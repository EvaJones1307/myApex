public class PrimitiveDataTypeDemo3 {
    public void printNewDateTime(){
        Date today = date.today();
        time newTime = time.newInstance(9, 8, 0, 0);

        //1. new datetime from DATE and TIME
        datetime dt1 = datetime.newInstance(today, newTime);
        system.debug('dt1 ' + dt1);

        //2. datetime from YEAR, MONTH, DAY
        datetime dt2 = datetime.newInstance(2025, 1, 9);
        system.debug('dt2 is ' + dt2);

        //3. datetime from YEAR, MONTH, DAY, HOUR, MINUTE, SECOND.
        datetime dt3 = datetime.newInstance(2022, 02, 20, 15, 15, 15);
        system.debug('dt3 is ' + dt3);

        //4. Current datetime???
        datetime currentDT = datetime.now();
        //current user's timezone is considered. 
        //when it prints, it prints in GMT
        system.debug('current DT : ' + currentDT);


        //5. create GMT datetime using year , month, day, 
        Datetime dt5 = Datetime.newInstanceGmt(1993, 3, 5, 18, 9, 3);
        system.debug('dt5 is ' + dt5);

        //6.create newInstance from milliseconds LONG
        Long longtime = 12345689688998L;
        Datetime dt6 =Datetime.newInstance(longtime); 
        system.debug('dt6 is ' + dt6);

    }
    public void printNewTime(){
        //.newInstance(hour, minutes, seconds, milliseconds);
        Time myTime = Time.newInstance(18, 20, 5, 30);
        Time meTime = Time.newInstance(6, 0, 0, 30);
        system.debug('my time: ' + myTime);
        system.debug('me time: ' + meTime);
    }

   public void printNewDate(){
       system.debug('create new date instance');
       //.newInstance(year, month, day);
       Date newDate = Date.newInstance(1995, 5, 15);
       system.debug('new date : ' + newDate);

       Date newDate2 = Date.newInstance(2022, 02, 02);
       system.debug('new date2 : ' + newDate2);

       //today's date
       Date todayDate = date.today();
       system.debug('today date is ' + todayDate);

     
   }
}

