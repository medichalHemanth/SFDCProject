public with sharing class ComposeMail {


    public Attachment attach { get; set; }

    public String text1 { get; set; }

    public String subject1 { get; set; }

    public String toaddre { get; set; }
    public ComposeMail (){
    attach=new attachment();
    
     }

    public PageReference sendmai() {
        list<Messaging.singleEmailMessage> mails=new list<Messaging.SingleEmailMessage>();
    Messaging.singleEmailMessage mail=new Messaging.SingleEmailMessage();
    list<String> toadd=new List<String>();
    for(string eachemail:toaddre.split(','))
    {
    toadd.add(eachemail);
    }
   //file attachment
     list<Messaging.EmailFileAttachment> lstefa = new list<Messaging.EmailFileAttachment>();
   
    Messaging.EmailFileAttachment efa = new Messaging.EmailFileAttachment();
    
    efa.setfilename(attach.name);
    efa.setinline(true);
    efa.setbody(attach.body);
    lstefa.add(efa);
    mail.setfileattachments(lstefa);
    mail.setToAddresses(toadd);
    system.debug(toadd);
    mail.setSubject(subject1);
    mail.setPlainTextBody(text1);
    mails.add(mail);
    messaging.sendEmail(mails);
    
        return null;
    }

}