public class SetDemo {
    public static void citySet() {
        Set<String> cities = new Set<String>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        system.debug('set of cities ' + cities);
    }
    public static void randomInteger(){
        set<integer> setInteger = new set<integer>{10, 15,20,30};
      
        system.debug('set of random integers ' + setInteger);
    }
    public static Set<Integer> setFromList (list<integer>intList){
        Set<Integer> intSet = new Set<Integer>();
        intSet.addAll(intList);
        return intSet;

    }
    public static Set<String> capitalizeSet (Set<String> setString) {
        Set<String> upperCaseSet = new Set<String>();
        for (string eachString : setString) {
            string tempStr = eachString.toUpperCase();
            upperCaseSet.add(tempStr);
           
        }
        return upperCaseSet;
        
    }
}
