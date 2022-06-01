Map<String, string> mapCntCurrency = new map<string, string>();

mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan' , 'Yen');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkey', 'Lira');

system.debug('map of country currency = ' + mapCntCurrency);

string indiaCurrency = mapCntCurrency.get('India');
string country ='Turkey';
string turkeyCurrency = mapCntCurrency.get(country); //valid? yes

system.debug('india Currency = ' + indiaCurrency);
system.debug('turkey currency = ' + turkeyCurrency);

set<string> countrySet = mapCntCurrency.keySet();
system.debug('countries in map: ' + countrySet);

list<string> currencyList = mapCntCurrency.values();
system.debug('currencies in map: ' + currencyList);


    for(string eachKey: countrySet){
    string eachCurrency = mapCntCurrency.get(eachKey);
    string printString = 'country is ' + eachKey + ', its currency is ' + eachCurrency;
    system.debug(printString);
}
