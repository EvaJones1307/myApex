map<string, country_code__c> mapCC = country_code__c.getAll();
system.debug('map of country code = ' + mapCC);
for(string eachCountry : mapCC.keySet()){
    system.debug('country + ' + eachCountry + ' ,' + mapCC.get(eachCountry). country_code__c);
}
