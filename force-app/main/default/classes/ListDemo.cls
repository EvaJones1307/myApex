public class ListDemo {
    public static string candidatesList(integer indx) {
        list<string> listCandidates = new list<string>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Eva');
        system.debug('candidates are ' + listCandidates);
        string retrnString = ' ';
        if (indx >=0 && indx < listCandidates.size()) {
            retrnString = listCandidates[indx];
        } else {
            retrnString='no such value found';
        }
       return retrnString;

        // string value3= listCandidates[3];
        // system.debug('value at index 3 ' + value3);
    }

    public static void randomIntegerList() {
        list<integer> listInteger = new list<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);

        //get index 3 value.
        integer index3value = listInteger.get(3);
        integer index3value2 = listInteger[3];
        
        system.debug('list of random integers ' + listInteger);
        system.debug('value at index 3 is ' + index3value2);
    }
    public static void allCats() {
        cat falconsCat = new cat ('fluffykins ', 'white', 3);
        cat vitapCat = new cat ('simba ' , 'brown', 4);

        list<cat> cats = new list<cat>();
        cats.add(falconsCat);
        cats.add(vitapCat);
        system.debug('all cats are ' + cats);
    }
    public static void iteretaIntegerList(){
        list<integer> listInteger = new list<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(16);
        for (integer eachInteger : listInteger) {
            system.debug(eachInteger);
            
        }
    }
}