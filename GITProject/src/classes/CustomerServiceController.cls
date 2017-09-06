public class CustomerServiceController 
{

    public PageReference doSave()
    {
     partnerSoapSforceCom.soap mypartnersoap=new partnerSoapSforceCom.soap();
     partnerSoapSforceCom.LoginResult partnerLoginResut=mypartnersoap.login('medichal.salesforce.com@gmail.com','Thinksmart1OMM3As2FCpRqYqh7K9L6pdmP');
     //This is line code for Connection
     //This Partner WSDL file while Browse the file generated class(partnerSoapSforceCom)
     //In this inner class called SOAP you have method called LoginResult(UserName,Password) this response
     //In this class you have inner Class in that you SessionID
     System.debug('Hemanth--------------->'+partnerLoginResut);
     System.debug('Session Id is------->'+partnerLoginResut.sessionId);
        //till here connection....!
        //Another WSDL
        //soapSforceComSchemasClassAccountser>AccountService>
        //pass session from session Header
     String sessionId=partnerLoginResut.sessionId;
     soapSforceComSchemasClassAccountser.SessionHeader_element webserviceSessionHeader=new soapSforceComSchemasClassAccountser.SessionHeader_element();
     webserviceSessionHeader.sessionId=sessionId;
     soapSforceComSchemasClassAccountser.AccountService obj=new soapSforceComSchemasClassAccountser.AccountService();
    //obj.this SessionHeader From AccountService Class  
     obj.SessionHeader=webserviceSessionHeader;
     String status=obj.CreateCustomer(objA.Name,objA.Phone,objA.Billingcity);//this invoke source method....
     if(status=='success')
     {
         try
         {
         insert objA;    
         }catch(DMLException e)
         {
             System.debug('------------------------->'+e);
         }
         
     }if(objA.Id!=null)
     {
         statusmsg='Customer Created Seccessfully....!';
     }
         return null; 
    }
    public String statusmsg {set;get;}
    public Account objA{set;get;}
    public CustomerServiceController()
    {
        objA=new Account();
        statusmsg='';
    }
}