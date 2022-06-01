@isTest
public class SPTriggerHandlerTest {
    @isTest
    private static void testMethod1() {
        Salesforce_project__c sp = new salesforce_project__c();
        sp.project_name__c = 'Teach async to FALCONS';
        sp.description__c = 'All 40% are great learners, still';
        

        Salesforce_project__c sp1 = new salesforce_project__c();
        sp1.project_name__c = 'Teach future to FALCONS';
        sp1.description__c = 'All 40% are great learners, still';

        List<Salesforce_Project__c> lstSP = new List<Salesforce_Project__c>{sp, sp1};
        insert lstSP;

        set<id> spIds = new set<id> {sp.id, sp1.id};

        Test.startTest();
        SalesforceProjectTriggerHandler.updateProjectDescription(spIds);
        Test.stopTest();

        List<Salesforce_Project__c> sps = [select id, description__c from Salesforce_Project__c];
        system.assert(sps[0].Description__c.containsIgnoreCase('future'));
        

    }
    public static void spCompletedStatus(List<Salesforce_Project__c> spTriggerNew, 
   List<Salesforce_Project__c> spTriggerOld,
   Map<id, Salesforce_Project__c> spTriggerNewMap,
   Map<id, Salesforce_Project__c> spTriggerOldMap) {
       //get set<id> where status is changed.
       set<id> spIds = new set<id>();
       for (salesforce_project__c sp : spTriggerNew) {
           //if new record status != old record status
           //status is changed to 'Complated'
            if(sp.Status__c != spTriggerOldMap.get(sp.id).Status__c
            && sp.Status__c == 'Completed'){
                spIds.add(sp.Id);
            }
       }
       if(!spIds.isEmpty()){
        updateTicketStatusCompleted(spIds);
      }
  }
  @future
  private static void updateTicketStatusCompleted(set<id> spIds) {
      List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c where Salesforce_Project__c in :spIds and status__c != 'Completed'];
      for (salesforce_ticket__c st : listST) {
          st.Status__c = 'Completed';
      }
      if (!listST.isEmpty()) {
          update listST;
      }
  }
}
