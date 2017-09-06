public class TestController 
{     
public id insetedId=ApexPages.currentPage().getParameters().get('insetedId');
public List<TicketDetails__c> Ticket{set;get;}
public TestController()
{
    System.debug('------------------------------------------------------->'+insetedId);
 Ticket=[Select Name,Name__c,Email__c,Cost__c,DateTime__c,CarModel__c,From__c,To__c from TicketDetails__c where id=:insetedId];
}
}