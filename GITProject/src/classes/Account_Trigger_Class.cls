public class Account_Trigger_Class 
{
public void medichal(List<Account> a)
{
for(Account acc : a)
{
if(acc.AnnualRevenue<=10000)
{
System.debug('Initial commit using GIT');
acc.adderror('AnnualRevenue is required field and AnnualRevenue must be above 10,000..!');
}
}  
}
}