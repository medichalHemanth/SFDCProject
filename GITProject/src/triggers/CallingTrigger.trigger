trigger CallingTrigger on Account (before Insert) 
{
Account_Trigger_Class act=new Account_Trigger_Class();
act.medichal(Trigger.New);
}