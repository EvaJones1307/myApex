set<string> uniqueNameSet = new set <string> {'Tom' , 'Jerry'};
system.debug('Unique name set is ' + uniqueNameSet + uniqueNameSet.size());
uniqueNameSet.add('Bunny');
uniqueNameSet.add('Gonzalez');


Boolean isContain = uniqueNameSet.contains('Eva');
system.debug('Does the set contain your name? ' + isContain);

Boolean isEmt = uniqueNameSet.isEmpty();
system.debug('Is the set emty? ' + isEmt);


boolean result = uniqueNameSet.removeAll(uniqueNameSet);
system.debug(uniqueNameSet);

boolean result2 = uniqueNameSet.isEmpty();
system.debug('is the set empty? ' + result2);

A list is an ordered collection of elements that are distinguished by their indices. List elements can be of any data type—primitive types, collections, sObjects, user-defined types, and built-in Apex types.

A set is an unordered collection of elements that do not contain any duplicates. Set elements can be of any data type—primitive types, collections, sObjects, user-defined types, and built-in Apex types.