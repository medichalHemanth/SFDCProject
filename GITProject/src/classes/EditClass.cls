public class EditClass 
{
    public List<PostingRides__c> Rides{set;get;}
    public String Name{set;get;}
    public EditClass()
    {
        Rides=[select Name__c,Email__c from PostingRides__c];
    }
    public void edit()
    {
        
    }
}