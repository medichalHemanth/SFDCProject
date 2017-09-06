public class EditTest 
{ 
    public String Name{set;get;}
    public Decimal AvailableSeates{set;get;}
    public String CarModel{set;get;}
    public String Contact{set;get;}
    public String Email{set;get;}
    public List<PostingRides__c> result{set;get;}
    public void edit()
    {
        Result=[select Name__c,AvailableSeats__c,CarModel__c,Cost__c,Contact__c from PostingRides__c where createdDate=TODAY];
        for(PostingRides__c a:result)
        {
            a.Name__c=Name;
            a.AvailableSeats__c=AvailableSeates;
            a.CarModel__c=CarModel;
            a.Contact__c=Contact;
            a.Email__c=Email;
            update a;
            
        }
    }
}