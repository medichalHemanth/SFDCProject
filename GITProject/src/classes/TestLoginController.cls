@isTest
public class TestLoginController {
 public String rid{set;get;}
public static testmethod void logintestnegative()
{
    test.startTest();
    PageReference pf=Page.LoginVF;
	LoginController lg = new LoginController();
    lg.timecardsignin();
    test.stopTest();
}
 public static testmethod void logintestpossitive()
{
    
    UserRegistration__c ur=new UserRegistration__c(username__c='medichal@salesforce.com',password__c='Thinktest',Email__c='Medichal@gmail.com');
    insert ur;
    PageReference pf=Page.Welcome;
    LoginController lg = new LoginController();
    lg.timecardsignin();
    
 }
}