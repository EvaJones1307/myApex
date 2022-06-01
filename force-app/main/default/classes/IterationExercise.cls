public class IterationExercise {
    public void getMultiplicationTable(integer num) {
        system.debug('input : num = ' + num);
        for (Integer i = 1; i < 11; i++) {
            integer table = i*num;
            
            system.debug('output ' + i + ' * ' + num + ' = ' + table);
        }
    }
    public void getPerfectAverage(integer num1, integer num2){
        system.debug('input: num1 = ' + num1);
        system.debug('input: num2 = ' + num2);
        integer total = num1;
        integer count = 1;
        
        for (integer i=num1+1; i<=num2; i++){
            total += i;
            count++;
        }
        integer average = total/count;
        system.debug('output : ' + average);
        system.debug('calculation: ');

        string n = '';
        for (integer i = num1; i<num2; i++){
            n += string.valueOf(i) + ' + ';
        }
        system.debug(n + num2 + ' = ' + total);
        system.debug('total ' + count + ' numbers between ' + num1 + ' to ' + num2);
        system.debug(total + '/' + count + ' = ' + average);
    }
}
