trigger OpportunityTrigger on Opportunity (before insert , before update, after insert, after update) {
    if(trigger.isBefore && trigger.isUpdate){
        OpportunityTriggerHandler.OpportunityCloseDate(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
}
}