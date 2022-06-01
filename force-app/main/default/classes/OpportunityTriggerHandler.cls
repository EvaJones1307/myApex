public class OpportunityTriggerHandler {
    public static void OpportunityCloseDate(list<opportunity> oppTriggerNew, List<Opportunity> oldTriggerOld, map<Id, Opportunity> oppTriggerNewMap, Map<id, Opportunity> oppTriggerOldMap ) {

        for(Opportunity eachOpp: oppTriggerNew){
            if(oppTriggerOldMap.get(eachOpp.Id).CloseDate > eachOpp.CloseDate){
                eachOpp.CloseDate.addError('close date cannot be updated to less that what already provided');
            }
        }
    }
}
