@isTest
public class TestBatchDemo 
{
public static testmethod void batchDemo()
{
    List<Account> ListAccount=new List<Account>();
    for(Integer i=0;i<100;i++)
    {
         Account acc=new Account();
         acc.Name='Name'+i;
        ListAccount.add(acc); 
    }
    insert ListAccount;
    Test.startTest();
    BatchDemo bd=new BatchDemo();
    Database.executeBatch(bd);
    Test.stopTest();
}
}