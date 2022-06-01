public class Greetings {
    public string language = '';

        public string greetingHello(){
            string greeting = '';
            if(language == 'Hindi'){
                greeting = 'Nameste';
            } else if(language == 'Turkish') {
                greeting = 'Merhaba';
            }else{
                greeting = 'Hello';
            }
        return greeting;
    }
    public string greetingHello(integer n){
        string greeting = '';
        if(language == 'Hindi'){
            greeting = 'Nameste';
        } else if(language == 'Turkish') {
            greeting = 'Merhaba';
        }else{
            greeting = 'Hello';
        }
        string finalReturnString = greeting;
        for (Integer i = 1; i < n; i++) {
            finalReturnString = finalReturnString + ' ' + greeting;          
        }
    return finalReturnString;
    }

    public string greetingHello2(){
        string greeting = '';
        switch on language {
            when 'hindi' {
                greeting = 'namaste nameste';
            }
            when 'turkish' {
                greeting = 'merhaba merhaba';
            }
        }
        return greeting;
    }
}
    
