trigger AccountRollupsumaryTrigger on Account (before insert,before update,after insert)
{
if(Trigger.isInsert &&Trigger.isAfter)
{
    RollupTirggerExample.AccountCount(Trigger.new);
    
}
}