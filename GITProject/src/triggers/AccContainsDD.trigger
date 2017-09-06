trigger AccContainsDD on Account (before delete) 
{
for(Account acc:Trigger.old)
{
System.debug('this is Trigger.old'+Trigger.old);
List<contact> cons=[select id,name from contact where Accountid=:acc.id];
    if(!cons.isempty()){
   acc.adderror('you cannot this account because it contains contacts');
}
}
}