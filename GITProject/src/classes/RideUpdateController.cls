public class RideUpdateController
{
    public id ids=System.currentPageReference().getParameters().get('id');
    public List<PostingRides__c> rides{get;set;}
    public PageReference save()
    {
       rides=[select Name__c,Email__c,AvailableSeats__c,Cost__c,DateTime__c,CarModel__c,From__c,To__c from PostingRides__c where ProfileID__c=:ids];
       upsert rides;
       PageReference pageref=new PageReference('/apex/PostingRide?id='+ids);
       return pageref;
    }

}