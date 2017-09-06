@isTest
public class TestDMLOperation 
{
public static testmethod void dmlop()
{
    Account a=new Account(name='Test');
    insert a;
    DmLOperation instance=new DmLOperation();
    instance.DMLOperation1() ;
    
}
}