public class CreateContactController 
	{
   
public PageReference dosave()
{
    partnerSoapSforceComContact.soap mypartnersoap=new partnerSoapSforceComContact.Soap();
    partnerSoapSforceComContact.LoginResult partnerloginResult=mypartnersoap.login('medichal.salesforce.com@gmail.com', 'Thinksmart1OMM3As2FCpRqYqh7K9L6pdmP');
    System.debug('----------------------->'+partnerloginResult);
    System.debug('----------------------->'+partnerloginResult.sessionId);
    String sessionId=partnerloginResult.sessionId;
    soapSforceComSchemasClassContactser.SessionHeader_element webserviceSessionHeader=new soapSforceComSchemasClassContactser.SessionHeader_element();
    webserviceSessionHeader.sessionId=sessionId;
    soapSforceComSchemasClassContactser.ContactServiceWS objA1=new  soapSforceComSchemasClassContactser.ContactServiceWS();
    objA1.SessionHeader=webserviceSessionHeader;
   String status= objA1.CreateContact( objA.LastName, objA.Phone);//invoking Source method 
    if(status=='success')
    {
        insert objA;
    }
    if(objA.Id!=null)
    {
        Statusmsg='Customer Created Successfully....!';  
    }
        return null;
}
    public Contact objA{set;get;}
        public String Statusmsg{set;get;}
    public CreateContactController ()
        {
         objA=new Contact();   
        }
}