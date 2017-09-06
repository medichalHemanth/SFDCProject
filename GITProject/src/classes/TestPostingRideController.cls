@isTest
public class TestPostingRideController 
{
public static testmethod void PositivepostinRideCon()
{
    PostingRides__c pr=new PostingRides__c(); 
    pr.Name='medichal';
    pr.Name__c='medichal';
    insert pr;
    PostingRideController prc=new  PostingRideController();
    prc.Doinsert();
}
    
public static testmethod void negativepostinRideCon()
{
    PostingRides__c pr=new PostingRides__c(); 
    pr.Name='medichal';
    pr.Name__c='medichal';
    insert pr;
    PostingRideController prc=new  PostingRideController();
    prc.Doinsert();
}
}