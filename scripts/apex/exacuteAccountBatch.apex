AccountsBatch ab = new AccountsBatch();
Database.executeBatch(ab, 20);

LIST<ACCOUNT> accs = [select id, name from account];
AccountQueueableExample qa = new AccountQueueableExample(accs);
Id jobid = system.enqueueJob(qa);
system.debug('job id ' + jobid);