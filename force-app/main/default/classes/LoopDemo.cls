public class LoopDemo {
    // // public void print_int_while() {
    // //     integer count = 1;
    // //     while(count <=25){
    // //         system.debug(count);
    // //         count++;
    //     }
        // public void print_N_numbers(integer n){
        //     string s = '';
        //     //for initialize    condition     increment
        //     for (Integer i = 0;   i < n;     i++) {
        //         //print 'i'...
               
        //         system.debug(i);
                
        //     }
        public integer print_sum_N_numbers(integer n){
            integer sum = 0;
            for (Integer i = 1; i <= n; i++) {
                sum += i;
                
            }
            system.debug('summation is ' + sum);
            return sum;

        }
        public void print_N_Odd_Numbers(integer starInt, integer endInt){
            for (Integer i = starInt; i <= endInt ; i++){
                integer modI =math.mod(i,2);
                if (modI == 1) system.debug(i);
            }
        }
    }