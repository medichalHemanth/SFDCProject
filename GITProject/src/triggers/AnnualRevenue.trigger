trigger AnnualRevenue on Account (before update)
{
for(Account acc: Trigger.new)
{
if(acc.AnnualRevenue<=10000)
{
acc.adderror('this is not allowed to give below 10000...! ');
}
System.debug('this is old Value'+Trigger.old);
System.debug('this is new value'+Trigger.new);
}
}