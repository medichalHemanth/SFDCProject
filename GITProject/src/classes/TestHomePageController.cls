@isTest
public class TestHomePageController {
public static testmethod void HomePageCon()
{
    PostingRides__c pr=new PostingRides__c(Name__c='medichal',Email__c='medichal@gmail.com');
    insert pr;
    HomePageController hpc=new HomePageController();
    hpc.Search();
    hpc.Payment();
}

public static testmethod void HomePageCon1()
{
    HomePageController hpc=new HomePageController();
    hpc.Search();
    hpc.Payment();
}    
}