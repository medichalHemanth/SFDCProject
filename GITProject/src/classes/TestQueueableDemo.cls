@isTest
public class TestQueueableDemo 
{
public static testmethod void TestQueue()
{
    Account a=new Account(Name='Legacy');
    insert a;
    Test.startTest();
    System.enqueueJob(new QueueableDemo());
    Test.stopTest();	
}
}