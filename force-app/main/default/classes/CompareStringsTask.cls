public class CompareStringsTask {
    //create a method to check the string
    public void containsString() {
       string title = 'Welcome to the Salesforce world,apex is the host in this world';
       system.debug(title);
       boolean containsHost = title.contains('HOST');
       system.debug('Has the sentence contain the word HOST?==> ' + containsHost);
    }
  //create a method to compare two strings
    public void compareStrings(){
        string sentence1 = 'My favorite part is apex';
        string sentence2 = 'MY FAVORITE PART IS APEX';
        system.debug(sentence1);
        system.debug(sentence2);
     //equals check if two strings are same or not.if same returns true.
        Boolean compareSentences = sentence1.equals(sentence2);
        system.debug('Are the sentences exactly the same? ' + compareSentences);
    }

    
}
