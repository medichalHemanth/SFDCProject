public class DmLOperation 
{
    public void DMLOperation1()
    {
    Account a=new Account(name='Testing');
    insert a;
    List<Account> accList=[select id,Name from Account];
    List<Account> AccisUpdate=new List<Account>();
    System.debug('AccList is: '+accList);
    for(Account acc:accList)
    {
        acc.Name='med';
        AccisUpdate.add(acc);
    }
    update AccisUpdate;
    }
}