public class PostingRidesCon
{
@AuraEnabled
public static List<PostingRides__c> getList()
{
    return [select Name__c,Phone__c,CarModel__c,AvailableSeats__c,AvailableBal__c,DateTime__c from PostingRides__c];
}
}