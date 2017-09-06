trigger AvoidEmailDupli on Account (before insert,before update) 
{
for(Account acc:Trigger.new)
{
List<Account> alist=[Select id,name from Account where Name=:acc.Name];
if(alist.size()>0)
{
acc.adderror('this email already Existed...!');
}
}
}