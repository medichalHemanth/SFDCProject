trigger Onerecord on Employee__c (before insert) 
{
Set<id> ids=new Set<id>();
for(Employee__c e:[select id from Employee__c])
{
ids.add(e.id);
System.debug('This is Ids values'+ids);
}
for(Employee__c acc:Trigger.new)
{
System.debug('This is Ids values'+ids.size());
if(ids.size()>0)
{
acc.adderror('One record allowed..!');
}
}
}