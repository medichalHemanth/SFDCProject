@isTest
public class TestSchedulableDemo 
{
public static testmethod void testSchedule()
{
    Account a=new Account(Name='TestClass Schedule');
    insert a;
    test.starttest();
         SchedulableDemo sd=new SchedulableDemo();   
         String chron = '0 0 23 * * ?';        
         system.schedule('Test Sched', chron, sd);
         test.stopTest();
}
}