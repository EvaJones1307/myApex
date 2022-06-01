public class TurkishLesson1 {
    public void basics1() {
        system.debug('welcome to the class');
        string str = 'I am learning coding';
        system.debug(str);
        
        integer nmbr = 10;
        system.debug(nmbr);
        nmbr =  15;
        system.debug(nmbr);
        
        integer a = 45;
        integer b = 5;
        integer c = a + b;
        integer d = a/b;
        
        system.debug('a sayisi = ' + a + ' b sayisi =' + b);
        system.debug(' c sayisi= ' + c + ' d sayisi =' + d);

    }

public void stringMetodlar(){
    string s = 'hello maximillian';
    string s2 = s.capitalize();
    system.debug(s2);
    string myString1 = 'abcde';
    string myString2 = 'abcd';
    Boolean result = myString1.contains(myString2);
    system.debug('mystring1 icinde mystring2 var mi? ' + result);


}

public void dateMetodlari(){
    date myDate = date.today();
    system.debug('bugunun tarihi ' + myDate);
    system.debug('bugunden 10 gun sonra ' + myDate.addDays(10));
    system.debug('bugunden 11 ay sonrasi ' +myDate.addMonths(11));

}
}