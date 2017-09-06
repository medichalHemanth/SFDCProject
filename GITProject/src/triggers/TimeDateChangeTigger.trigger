trigger TimeDateChangeTigger on PostingRides__c (after Update) 
{
List<Messaging.SingleEmailMessage> mails=new List<Messaging.SingleEmailMessage>();
for(PostingRides__c ride:Trigger.new)
{
if(Trigger.isUpdate)
{
for(PostingRides__c obj:[select Email__c from PostingRides__c])
{

Messaging.singleEmailMessage mail=new Messaging.singleEmailMessage();
List<String> sendTo=new List<String>();
sendTo.add(obj.Email__c);
mail.setToAddresses(sendTo);
mail.setReplyTo('hemi.medichal@gmail.com');
mail.setSenderDisplayName('medichal');
mail.setSubject('Urgent Owner is changed Date or Time...!');
String body='Dear ';
mail.setHtmlBody(body);
mails.add(mail);
}
Messaging.sendEmail(mails);
}
}
}