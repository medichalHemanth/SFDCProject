public class AccountHandler1 
{
public void myinsert()
{
   Account acc=new Account();
    if(acc.AnnualRevenue==null&&acc.AnnualRevenue<=1000)
    {
    acc.addError('this is account handler error madatary field...!');    
    }
}
}