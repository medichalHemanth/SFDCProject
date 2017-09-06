@isTest
public class TestTicketController 
{
static testmethod void testticket()
{
  TicketDetails__c td=new  TicketDetails__c();
    td.CarModel__c='bmw';
    insert td;
    TicketDetails__c td1=[Select Name,Name__c,Email__c,Age__c,Phone__c,ContactPhone__c,AvailableSeats__c,Cost__c,DateTime__c,CarModel__c,From__c,To__c from TicketDetails__c where id =:td.Id];
    Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
    message.setSubject('Report');
    message.setPlainTextBody('The report is attached.');
    message.setToAddresses( new String[] { 'name@example.com' } );
    message.setBccAddresses( new String[] { 'name@example.com' } );
    Messaging.sendEmail( new Messaging.SingleEmailMessage[] { message } );
    List<Messaging.SendEmailResult> results = Messaging.SendEmail(new Messaging.Email[] { message });
     Messaging.EmailFileAttachment fa=new Messaging.EmailFileAttachment();
        PageReference pf=Page.HomeControllerVF;
        pf.setRedirect(true);
    TicketController tc=new TicketController();
    tc.home();
}
}