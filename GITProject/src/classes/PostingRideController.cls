public class PostingRideController 
{
    public String Name{set;get;}
    public Decimal AvailableSeats{set;get;} 
    public String frm{set;get;}
    public String too{set;get;}
    public String Email{set;get;}
    public String Phone{set;get;}
    public String CarModel{set;get;}
    public String Contact{set;get;}
    public Date dat{set;get;}
    public Decimal Cost{set;get;}
    public id ids=System.currentPageReference().getParameters().get('id');
    public PageReference Doinsert()
    {	
        PostingRides__c pr=new PostingRides__c();
        pr.ProfileID__c=ids;
        pr.Name__c=Name;
        pr.Email__c=Email;
        pr.Phone__c=Phone;
        pr.DateTime__c=dat;
        pr.AvailableSeats__c=AvailableSeats;
        pr.CarModel__c=CarModel;
        pr.Contact__c=Contact;
        pr.Cost__c=Cost;
        pr.From__c=frm;
        pr.To__c=too;
        try
        {
            insert pr;
        }catch(DmlException e)
        {
            e.getMessage();
        }
        PageReference ref=new PageReference('/apex/Welcome?id='+ids);
        ref.setRedirect(true);
        return ref;
    }
}