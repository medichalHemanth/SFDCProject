global class BatchDemo implements database.Batchable<sobject> ,database.stateful
{
    global Integer count=0;
global Database.QueryLocator start(Database.BatchableContext bc)
{
     String query='select Id,Name from Account';
    return Database.getQueryLocator(query); 		
}
    global void execute(Database.BatchableContext bc,List<Account> scope)
    {
        for(Account acc:scope)
        {
            acc.name='test';
            count++;  
        }
    }
    global void finish(Database.BatchableContext bc)
    {
        System.debug('this is record count'+count);
    }
}