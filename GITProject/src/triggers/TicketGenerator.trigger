trigger TicketGenerator on TicketDetails__c (after Insert) 
{
for(TicketDetails__c td:Trigger.new)
{
        Messaging.SingleEmailMessage email=new Messaging.SingleEmailMessage();
        PageReference pdfexample=Page.PdfVF;
        blob b=pdfexample.getContent();
        Messaging.EmailFileAttachment fa=new Messaging.EmailFileAttachment();
        fa.setFileName('Ticket.pdf');
        fa.setBody(b);
        String subject='Ticket';
        String body='Dear Customer,';
        email.setSubject( subject );
        String[] toAddress = new String[] {Trigger.New[0].Email__c};
        email.setToAddresses( toAddress);
        email.setPlainTextBody( body );
        email.setFileAttachments(new Messaging.EmailFileAttachment[] {fa});
        Messaging.SendEmailResult [] r = Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});
         }
  }