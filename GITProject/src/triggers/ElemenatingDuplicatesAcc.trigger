trigger ElemenatingDuplicatesAcc on Account (before insert) 
{
for(Account acc:Trigger.new)
{
   list<account> accs=[select id,name from account where name=:acc.name];
if(accs.size()>0)
{
acc.name.adderror('this is account is already exsisted...!');
}
}
}