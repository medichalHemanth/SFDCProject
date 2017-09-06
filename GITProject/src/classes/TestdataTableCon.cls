@isTest
public class TestdataTableCon {
public static testmethod void testcon()
{
    test.startTest();
    PostingRides__c pr=new PostingRides__c();
    pr.Name='hemanth';
    pr.Name__c='medichal';
    Insert pr;
    PostingRides__c ps=[select name,name__c from PostingRides__c];
    update ps;
    dataTableCon dt=new dataTableCon();
    PageReference pf=Page.Welcome;
    //dt.getrides();
    dt.save();
    dt.cancel();
    test.stopTest();
}
    public static testmethod void testcon1()
{
    test.startTest();
    PostingRides__c pr=new PostingRides__c();
    pr.Name='hemanth';
    pr.Name__c='medichal';
    Insert pr;
    PostingRides__c ps=[select name,name__c from PostingRides__c];
    update ps;
    dataTableCon dt=new dataTableCon();
    PageReference pf=Page.Welcome;
    dt.getrides();
    dt.cancel();
}
}