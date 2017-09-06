trigger TriggerhandlerExample on Account (before insert,before update,before delete) 
{
AccountHandler1 ah=new AccountHandler1();
 if(Trigger.isInsert)
 {
    ah.myinsert();
 }
}