public with sharing class AccountSchedulable implements Schedulable{
    public void execute(SchedulableContext sc){
        database.executeBatch(new accountsBatch());
    }
}
