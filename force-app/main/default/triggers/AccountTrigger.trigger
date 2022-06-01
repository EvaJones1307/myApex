trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    if(trigger.isBefore){
        system.debug('before insert/update trigger called');
        AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        system.debug('before insert/update trigger end.');
        
    }
    if(trigger.isAfter && trigger.isUpdate){
        AccountTriggerHandler.updateVipForAllAcontacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}



    // if(trigger.isBefore){
    //     system.debug('before insert/update trigger called');
    //     map<id, account> newAccountMap = trigger.newmap;
    //     map<id, account> oldAccountMap = trigger.oldmap;
    //     for(account eachAcc: trigger.new){
    //         boolean updateDesc = false;
    //         if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
    //             updateDesc = true;
    //         }
    //         if(trigger.isUpdate){
    //             Account oldAccount = oldAccountMap.get(eachAcc.ID);
                
    //             string oldAccountActive = oldAccount.Active__c;
    //             //check if active is updated
    //             //active is changed to 'Yes'
    //             if(eachAcc.Active__c == 'Yes' &&
    //                 oldAccountActive != 'Yes'
    //             ) {
    //                 updateDesc = true;
    //             }
    //         }
    //         if(updateDesc){
    //             eachAcc.Description = 'Account is now active. Enjoy!';
    //         }
    //     }
    // }
    
    // }
                                 

   
    // if(trigger.isAfter && trigger.isUpdate){

    //     map<id, account> newAccMap = trigger.newMap;
    //     map<id, account> oldAccMap = trigger.oldMap;

    //     set<id> setOfAccIds = newAccMap.keySet();
    //     integer countWebsiteUpdated = 0;
    //     for(ID eachId : setOfAccIds){
    //         //get old account
    //         account oldAcc = oldAccMap.get(eachId);
    //         string oldWebsite = oldAcc.Website;
    //         //get new account
    //         account newAcc = newAccMap.get(eachId);
    //         string newWebsite = newAcc.Website;

    //         if(oldWebsite != newWebsite){
    //             //website is CHANGED
    //             system.debug('For account ' + newAcc.Name + ', new WEBSITE is ' + newWebsite);
    //             countWebsiteUpdated++;
    //         }

    //     }
    //     system.debug('# of account website updated= ' + countWebsiteUpdated);
    // }
    
















    // if(trigger.isAfter && trigger.isUpdate){
    //     system.debug('after update trigger of account object.');
    //     map<id, account> newAccMap = trigger.newMap;
    //     map<id, Account> oldAccMap = trigger.oldMap;

    //     set<id> setOfAccIds = newAccMap.keyset();


    //     for(id eachId : setOfAccIds){
    //     system.debug('====================');
    //     system.debug('each id= ' + eachId);

    //     Account newAccount = newAccMap.get(eachId);
    //     system.debug('new account name = '+ newAccount.name);

    //     account oldAccount = oldAccMap.get(eachId);
    //     system.debug('old account name = ' + oldAccount.name);

    //     }

    // }

















    // map<id, account> trgNewMap = trigger.newMap;
    // map<id, Account> trgOldMap = trigger.oldMap;

    // if(trigger.isBefore && trigger.isInsert){
    //     system.debug('=============before insert============');
    //     system.debug('before insert OLD MAP = ' + trgOldMap);
    //     system.debug('before insert NEW MAP = ' + trgNewMap);
    // }
    // if(trigger.isAfter && trigger.isInsert){
    //     system.debug('============AFTER insert============');
    //     system.debug('AFTER insert OLD MAP = ' + trgOldMap);
    //     system.debug('AFTER insert NEW MAP = ' + trgNewMap);
    // }
    // if(trigger.isBefore && trigger.isUpdate){
    //     system.debug('=============before UPDATE============');
    //     system.debug('before UPDATE OLD MAP = ' + trgOldMap);
    //     system.debug('before UPDATE NEW MAP = ' + trgNewMap);
    // }
    // if(trigger.isAfter && trigger.isUpdate){
    //     system.debug('=============AFTER UPDATE============');
    //     system.debug('AFTER UPDATE OLD MAP = ' + trgOldMap);
    //     system.debug('AFTER UPDATE NEW MAP = ' + trgNewMap);
    // } 






    // if(trigger.isAfter){
    //     if(trigger.isUpdate){
    //         list<account> oldAccounts = trigger.old;
    //         list<account> newAccounts = trigger.new;

    //         for(account oldAcc: oldaccounts ){
    //             system.debug('old acc.id= ' + oldAcc.id+ ', old acc name='+ oldAcc.Name);
    //         }
    //         for(account newAcc: newaccounts){
    //             system.debug('new acc.id = ' + newAcc.id + ', new acc name = ' + newAcc.Name);
    //         }
    //     }
    // }
       


    // if(trigger.isBefore && trigger.isInsert){
    //     system.debug('trigger.old before insert = ' + trigger.old);
    // }
    // if(trigger.isAfter && trigger.isInsert){
    //     system.debug('trigger.old after insert = ' + trigger.old);
    // }
    // if(trigger.isBefore && trigger.isUpdate){
    //     system.debug('trigger.old before update = ' + trigger.old);
    // }
    // if(trigger.isAfter && trigger.isUpdate){
    //     system.debug('trigger.old after update = ' + trigger.old);
    // }




    // if(trigger.isBefore && trigger.isUpdate){
    //     system.debug('trigger.new before update = ' + trigger.new);
    //     list<account> newAccounts = trigger.new;
    //     for (account acc :  newAccounts) {
    //         system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
    //     }
    // }
    // if (trigger.isAfter && trigger.isUpdate) {
    //     //trigger.new -> record(s) which were responsible for firing the trigger
    //     system.debug('trigger.new after update = ' + trigger.new);
    //     for (account acc :  trigger.new) {
    //         system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
    //     }
    // }

    // if(trigger.isBefore && trigger.isInsert){
    //     system.debug('trigger.new before insert = ' + trigger.new);
    // }
    // if (trigger.isInsert && trigger.isAfter) {
    //     //trigger.new -> record(s) which were responsible for firing the trigger
    //     system.debug('trigger.new after insert = ' + trigger.new);
    // }


    /*
    if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after insert = ' + trigger.new);

        list<account> newAccounts = trigger.new;

        system.debug('total account inserted = ' + newaccounts.size());
        for (account acc : newAccounts) {
            system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name);
        }
    }*/


    /*
    system.debug('---------START------------');
    system.debug('trigger.isBefore = ' + trigger.isBefore);
    system.debug('trigger.isAfter = ' + trigger.isAfter);
    system.debug('trigger.isInsert = ' + trigger.isInsert);
    system.debug('trigger.isUpdate = ' + trigger.isUpdate);
    if (Trigger.isInsert && Trigger.isBefore) {
        system.debug('before insert trigger fired');
    }
    if (Trigger.isInsert && Trigger.isAfter) {
        system.debug('after insert trigger fired');
    }
    if (Trigger.isUpdate && Trigger.isBefore) {
        system.debug('before update trigger fired');
    }
    if (Trigger.isUpdate && Trigger.isAfter) {
        system.debug('after update trigger fired');
    }
    system.debug('---------END------------');
    */
