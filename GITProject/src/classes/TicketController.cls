public class TicketController 
{
public List<TicketDetails__c> Ticket{set;get;} 
public id insetedId=ApexPages.currentPage().getParameters().get('id');
    public TicketController()
        {
     Ticket=[Select Name,Name__c,Email__c,Age__c,Phone__c,ContactPhone__c,AvailableSeats__c,Cost__c,DateTime__c,CarModel__c,From__c,To__c from TicketDetails__c where id =:insetedId];
        }   
    public PageReference home()
    {
        Messaging.SingleEmailMessage email=new Messaging.SingleEmailMessage();
        PageReference pdfexample=Page.PdfVF;
        pdfexample.setRedirect(true);
        blob b=pdfexample.getContent();
        Messaging.EmailFileAttachment fa=new Messaging.EmailFileAttachment();
        fa.setFileName('Ticket.pdf');
        fa.setBody(b);
        String subject='Ticket';
        String body='Dear Customer,';
        email.setSubject( subject );
        String[] toAddress = new String[] {Ticket[0].Email__c};
        email.setToAddresses( toAddress);
        email.setPlainTextBody( body );
        email.setFileAttachments(new Messaging.EmailFileAttachment[] {fa});
        Messaging.SendEmailResult [] r = Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});
        PageReference pf=new PageReference('/apex/HomeControllerVF');
        pf.setRedirect(true);
        return pf;
    }
}