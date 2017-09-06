public class PaymentController 
{
public List<TicketDetails__c> Ticket{set;get;}
public String Phone{set;get;}
public String ContactPhone{set;get;}    
public Integer Age{set;get;}    
public Integer AvailableSeates{set;get;}    
public String insetedId{set;get;}   
public String Body{set;get;}    
public String Name{set;get;}
public Date Dat{get;set;}
public String Email{set;get;}    
public String CarModel{get;set;}
public Decimal Cost{get;set;}    
public String Frm{set;get;}
public String To{set;get;}    
public List<PostingRides__c> rides{set;get;}   
public String rid{set;get;}
public Decimal CurrentBal{set;get;}
public Decimal PaidBal{set;get;}     
public id recordid=ApexPages.currentPage().getParameters().get('id');
public PaymentController()
{
  rides=[Select Name__c,Phone__c,Cost__c,Email__c,DateTime__c,CarModel__c,From__c,To__c from PostingRides__c where id =:recordid];
}
    public PageReference pay()
    {  
   ContactPhone=rides[0].Phone__c;     
   Cost=rides[0].Cost__c;   
   Dat=rides[0].DateTime__c;    
   CarModel=rides[0].CarModel__c;
   Frm=rides[0].From__c;
   To=rides[0].To__c;
   Cost=rides[0].Cost__c;     
   TicketDetails__c td=new TicketDetails__c();    
   td.DateTime__c=dat;  
   td.ContactPhone__c=ContactPhone;
   td.CarModel__c=CarModel;
   td.From__c=Frm;
   td.To__c=To;
   td.AvailableSeats__c=AvailableSeates;     
   td.Cost__c=Cost;
   td.Name__c=Name;
   td.Email__c=Email;
   td.Phone__c=Phone;
   td.Age__c=Age;     
   insert td;  
   insetedId=td.Id;
   PageReference pf=new PageReference('/apex/TicketPage?id='+insetedId);
   pf.setRedirect(true);
   return pf;
    }
}