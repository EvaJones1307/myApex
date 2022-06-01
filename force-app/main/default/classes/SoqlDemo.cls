public class SoqlDemo {
    public static void accountSoql_1() {
        //soql query always returns the list<sobject>
        list<account> listAcc = [Select Id, name from account where name like '%A%'];
        system.debug('account list = ' + listAcc);
        system.debug('# of accounts = ' + listAcc.size());

        account latestAcc = [select name, website from account order by createdDate desc limit 1];
        system.debug(latestAcc);

    }
    public static void accountSoql_2() {
        Account latestAcc = [select name, phone, AccountNumber from account order by createdDate desc limit 1];
        system.debug('latest account created is ' + latestAcc);
        
        id accid = latestAcc.id;
        string accName = latestAcc.Name;
        string accPhone = latestAcc.Phone;
        system.debug('acc name is ' + accName);
        system.debug('acc phone is ' + accPhone);
        system.debug('acc account number is ' + latestacc.AccountNumber);
       } 

        public static void accountSoql_3(){
            list<account> listAcc = [select id, name, phone, accountNumber from account order by createdDate desc];
            system.debug('all accounts ' + listAcc);
        
        for(account eachAccount : listAcc){
            id accid = eachAccount.id;
            string accName = eachAccount.name;
            string accPhone = eachAccount.phone;
            system.debug('accname = ' + accName + ' , phone is ' + accPhone);
            system.debug('account number is ' + eachAccount.AccountNumber);
        }
    }
        public static void accountSoql_4(){
            string accountName = 'softinnovas';
            list<account> listAcc = [select id, name from account where name = : accountName];
            system.debug(listAcc);

        }
        }
    