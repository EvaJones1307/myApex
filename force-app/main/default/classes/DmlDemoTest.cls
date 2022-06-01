@isTest
public class DmlDemoTest {
    @isTest
    public static void dmlDemoTest1(){
        DmlDemoForTest.dmlInsertDemo_stndObj();
        list<account> listAcc = [select id, name from account];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].Name);

    }
    @isTest 
    private static void dmlDemoUpdate2Test(){
        account acc = new account();
        acc.name= 'SoftInnovas Inc.';
        insert acc;

        DmlDemoForTest.dmlUpdateDemo_2();
        list<contact> listCnt = [select id, name from contact];
        system.assertEquals(1, listCnt.size());
        system.assertEquals('Biden', listCnt[0].Name);
    }
    
}

