public class SearchController 
{
   public String selectedFrom{get;set;}
   public String selectedTo{set;get;}
   public List<PostingRides__c> rides{set;get;} 

	public void Search(){
    	rides=[select Name__c,Email__c,AvailableSeats__c,Cost__c,DateTime__c,CarModel__c,From__c,To__c from PostingRides__c where From__c=:selectedFrom AND To__c=:selectedTo];
    
	}
}