Calculator calc = new Calculator();
calculator.welcomeMessage();
Calculator.printNewMessage('This is new age calc.');
Calculator.printNewMessage2('This is a message', date.today());
integer addInteger = Calculator.add(10,15);
system.debug('sum = ' + addInteger);
integer addInteger2 = calc.add(100,155);
system.debug('sum2 = '  + addInteger2);
integer finalSum = calc.add(addInteger, addInteger2);
system.debug('final sum = ' + finalSum);

integer sum22 = calc.add(15, 15, 15);
system.debug('sum 22 = ' + sum22);

system.debug('sum = ' + Calculator.add(10,15));
system.debug('sum2 = ' + Calculator.add(10,15,25));

List<integer> listInteger = new list<integer>();
listInteger.add(10);//0
listInteger.add(15);//1
listInteger.add(21);//2
listInteger.add(15);//3
listInteger.add(16);//4
integer listSum = Calculator.add(listInteger);
system.debug('sum of list elements ' + listSum);