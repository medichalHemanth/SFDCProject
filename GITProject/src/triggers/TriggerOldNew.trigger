trigger TriggerOldNew on Account (before Update)
{
for(Account acc:Trigger.new)
{
System.debug('this is the example of Trigger New'+acc.Name);
}
for(Account ac:Trigger.old)
{
System.debug('this is the example of Trigger old'+ac.Name);
}
}