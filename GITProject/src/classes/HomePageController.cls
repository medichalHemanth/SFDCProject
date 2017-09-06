public class HomePageController 
{
    public String messages{set;get;}
    public String selectedFrom{get;set;}
    public String selectedTo{set;get;}	
    public Date dat{set;get;}
    public String recordid{set;get;}
    public List<PostingRides__c> rides{set;get;}
    public void Search()
    {
    rides=[select Name__c,Email__c,AvailableSeats__c,Cost__c,CarModel__c,DateTime__c,Arrival__c,Departure__c,From__c,To__c from PostingRides__c where From__c=:selectedFrom AND To__c=:selectedTo AND DateTime__c=:dat];        
    if(rides.isEmpty())
    {
     messages='Rides are not available...!';  
    }
    }
     public PageReference Payment()
    {
        PageReference pageref=new PageReference('/apex/PaymentVF?id='+recordid);
        pageref.setRedirect(true);
        return pageref;
    }
}