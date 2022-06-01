public class DMLDemo {
    public static void dmlInsertDemo_stndObj(){
    Account acc = new account();
    acc.name = 'Softinnovas';
    acc.Site = 'www.softinnovas.com';
    acc.Description = 'salesforce bootcamp';


    insert acc;
    system.debug(acc);
}
    public static void dmlInsertDemo_cstmObj(){
        salesforce_project__c sp = new salesforce_project__c();
        sp.project_name__c = 'Teach DML to Falcons';
        sp.description__c = 'All 50% are great students';
        insert sp;
        system.debug(sp);
    
    }
    public static void dmlUpdatEDemo_1(){
        account acc = new account();
        acc.name = 'S';
        insert acc;
        System.debug('inserted '+ acc);
        acc.name= 'Salesforce Inc.';
        update acc;
        system.debug('updated ' + acc);
    }

    public static void dmlUpdateDemo_3(){
        account acc = [select id , name from account where name = 'Softinnovas' order by CreatedDate desc limit 1];
        acc.name = 'Softinnovas inc';

        update acc;
        system.debug('updated acc ' + acc);
    }
    public static void dmlInsertDemo_2(){
        account acc = [select name from account where name = 'SoftInnovas Inc' limit 1];
        system.debug('acc id is ' + acc.id);

        contact cnt = new contact();
        cnt.LastName = 'Biden';
        cnt.AccountId = acc.Id;

        insert cnt;
    

    }
  public static void dmlMultipleRecordInsert_right(){
      list<account> listAcc = new list<account>();
      account acc1 = new account();
      acc1.name='bulk acc1';
      listAcc.add(acc1);

      account acc2 = new account();
      acc2.name='bulk acc2';
      listAcc.add(acc2);

      account acc3 = new account();
      acc3.name='bulk acc3';
      listAcc.add(acc3);

      insert listAcc;

  }
  public static void dmlMultipleRecordInsert2_right() {
    list<account> listAcc = new list<account>();

    account acc = new account();
    acc.Name = 'SoftInnovas inc 30-Apr22 v0';
    acc.AccountNumber = 'asci-1';
    acc.Active__c = 'Yes';
    listAcc.add(acc);

    for (Integer i = 1; i < 150; i++){
        account acc2 = new account();
        acc2.Name = 'SoftInnovas inc 30-Apr22 v'+i;
        acc2.AccountNumber = 'asci-1'+i;
        acc2.Active__c = 'Yes';
        listAcc.add(acc2);
        
    }
    system.debug('size of list ' + listAcc.size());

    if(!listAcc.isEmpty()){
        insert listAcc;
    }

}
}