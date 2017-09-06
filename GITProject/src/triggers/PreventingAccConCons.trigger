trigger PreventingAccConCons on Account (before Delete)
{
for(Account acc:Trigger.new)
{
list<Contact> cons=[select id,name from contact where AccountId=:acc.id];
if(!cons.isempty())
{
acc.adderror('this acc not possible to delete...!');
}
}
}