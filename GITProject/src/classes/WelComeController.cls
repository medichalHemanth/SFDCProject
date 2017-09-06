public class WelComeController
{   public String Userid{set;get;}
 public List<PostingRides__c> leads {get; set;}
 public String dealId{set;get;}
 public String recordid{set;get;}
 public id ids=System.currentPageReference().getParameters().get('id');
 public WelComeController()
 {
     userid = Userinfo.getUserId();
     loadData();
 }
 public void loadData()
 {
     leads=[select Name__c,Email__c,AvailableSeats__c,Cost__c,DateTime__c,CarModel__c,From__c,To__c from PostingRides__c where ProfileID__c=:ids];
 }
 public PageReference newRide()
 {
     PageReference pageref=new PageReference('/apex/PostingRide?id='+ids);
     pageref.setRedirect(true);
     return pageref;
 }
 public PageReference cancel()
 {
     return null;
 }
 public PageReference edit()
 {
     PageReference pageref=new PageReference('/apex/EditVf?id='+recordid);
     pageref.setRedirect(true);
     return pageref;
 }
 
 public void deleteDeal(){
     leads= [Select id,Name__c,AvailableSeats__c,DateTime__c,CarModel__c,From__c,To__c from PostingRides__c where id =:dealId];
     if(leads.size()> 0)
     {
         delete leads;
     }
     loadData();
 }
}