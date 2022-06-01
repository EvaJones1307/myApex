public class AccountInfo {
  public static void showAccounts(){
      list<account> allAccountswithOpp =[select Id, name, (select name from Opportunities where closeDate > today) from account];

      for(account eachAcc : allAccountswithOpp){
          system.debug('Account name is ' + eachAcc.name);
          for (Opportunity eachOpp : eachAcc.Opportunities){
              system.debug('Opportunity name is ' + eachOpp.name);

          }
      }
  }
}
