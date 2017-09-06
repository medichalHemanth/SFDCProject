@isTest
public class TestSearchController {
public static testmethod void searchtest()
{
    PostingRides__c pr=new PostingRides__c();
    pr.Name='Medichal';
    pr.Name__c='medichal';
    pr.Email__c='medichal.hemanth@gmail.com';
    pr.CarModel__c='BMW';
    pr.From__c='Hyderabad';
    pr.To__c='Banglore';
    insert pr;
SearchController sc=new SearchController();
sc.Search();    
}
}