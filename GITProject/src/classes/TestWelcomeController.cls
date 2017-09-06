@isTest
public class TestWelcomeController 
{
    public static testmethod void PositiveWelcomecon()
    {
       
        PostingRides__c pr=new PostingRides__c();
        pr.Name='medichal';
        pr.Name__c='hemanth';  
        pr.Email__c='medichal@gmail.com';
        insert pr;
        pr.name='medichal123';
        update pr;
          PostingRides__c leads= [Select id,Name__c,AvailableSeats__c,DateTime__c,CarModel__c,From__c,To__c from PostingRides__c where id =:pr.Id];
        delete leads;
        WelComeController wc=new WelComeController();
        test.startTest();
        wc.loadData();
        wc.cancel();
        wc.edit();
        wc.deleteDeal();
        wc.newRide();
        test.stopTest();
    }
}