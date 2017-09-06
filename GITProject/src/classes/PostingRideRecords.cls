public class PostingRideRecords {
@AuraEnabled
public static List<PostingRides__c> getRecords()
{	
    return [select id,name__c from PostingRides__c];
}
}