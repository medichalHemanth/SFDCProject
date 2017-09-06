trigger UpdateContacts on Account (before insert,before update) 
{
if(Trigger.isBefore && Trigger.isupdate)
{
 map<Id,Account> mymap=new map<Id,Account>();
 List<contact> con=new List<contact>();
 list<contact> cons=[select id,phone,accountId from contact where accountid in:mymap.KeySet()];
    System.debug('----------------->'+cons);
    for(Contact c:cons)
    {
        System.debug('----------------->'+cons);
        c.phone=mymap.get(c.accountid).phone;
        con.add(c);
    }
    update con;
}    
}