global class DeleteRecordsSchedulable implements Schedulable
{
    Date myDate = system.today();
    global void execute(SchedulableContext SC) 
    {
      //  List<PostingRides__c> customObj = [select id,Name__c,AvailableSeats__c,DateTime__c,CarModel__c,From__c,To__c from PostingRides__c WHERE DateTime__c<=:myDate];
        //if(!customObj.isEmpty())
         //   delete customObj;
    }
}