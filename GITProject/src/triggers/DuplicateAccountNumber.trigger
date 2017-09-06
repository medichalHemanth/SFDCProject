trigger DuplicateAccountNumber on Account (before insert) 
{
    for(Account acc:Trigger.new)
    {
        List<Account> a=[select id,name from account where AccountNumber=:acc.AccountNumber];
        if(a.size()>0)
        {
            acc.adderror('this is account number is already there...!');
        }
    }
}