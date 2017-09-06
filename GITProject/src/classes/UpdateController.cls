public class UpdateController 
{
@AuraEnabled
    public Static List<Account> getAcc()
    {
       return [Select Id, Name From Account];
    }
    @AuraEnabled
    public static Account saveAccount(Account account)
    {
       upsert account;
       return account;
    }
}