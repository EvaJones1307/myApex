public class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;

    public void printCandidate(){
        system.debug('candidate name is ' + Name + '('+ gender +')');
        //static members in non static methods-->allowed
        system.debug('company name is ' + CompanyName);
    }
    //non static member in static method -> not allowed
public static void printCandidateInfoSt() {
    system.debug('Company name is ' + CompanyName);
}
    
}
