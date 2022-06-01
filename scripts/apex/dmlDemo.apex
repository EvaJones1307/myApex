DMLDemo.dmlInsertDemo_stndObj();
DMLDemo.dmlInsertDemo_cstmObj();
DMLDemo.dmlUpdatEDemo_1();
DMLDemo.dmlUpdateDemo_3();
DMLDemo.dmlInsertDemo_2();
DMLDemo.dmlMultipleRecordInsert_right();
DMLDemo.dmlMultipleRecordInsert2_right();

DmlDemo2.dmlMultipleRecordUpdate_right();

list<account> delist = [select id from account where createdDate = today];
delete delist;

delete [select id from account WHere name like '%softinnovas%'];

List<Account> listAcc = [select id, name, website from account order by CreatedDate limit 10];
    
       list<account> updateAccounts = new list<account>();

        integer counter = 0;
       for (account acc : listAcc) {
           
           if(counter < 5){
                acc.Website = 'newwebsite.com';
           } else {
               acc.name = acc.name + ' v2';
           }
           
           updateAccounts.add(acc);
           counter++;
       }
       if(!updateAccounts.isEmpty()){
           update updateAccounts;
       }

       list<case> newCases = new list<case>();
       for (Integer i = 0; i < 205; i++) {
           case c = new case();
           c.subject = ' there is a bug';
           c.Description = 'resolve it';
           c.status = 'New';
           c.Origin = 'Web';
           newCases.add(c);
           
       }
       insert newCases;

       List<case> updatecase = [select id, status from case where status = 'New'];
for (case c : updatecase) {
    c.Status = 'Escalated';
}
update updateCase;