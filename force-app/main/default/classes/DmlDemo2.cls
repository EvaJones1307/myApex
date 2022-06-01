public class DmlDemo2 {
    public static void dmlMultipleRecordUpdate_right(){
        list<account> listAcc = [select id, name, description from account order by CreatedDate limit 150];
        list<account> updateAccounts = new list<account>();

        for(account acc: listAcc){
            acc.name += ' vB';
            acc.description = 'update via bulk DML';
            updateAccounts.add(acc);
        }
        if(!updateAccounts.isEmpty()){
        update updateAccounts;
    }
  
}
}