trigger updateFAX on Account (after insert,after update) 
{
List<Contact> consl=new List<Contact>(); 
Map<id,Account> mp=new Map<id,Account>();
for(Account acc:Trigger.new)
{
mp.put(acc.id,acc);
}
List<Contact> con=new List<Contact>();
for(Contact con:[select id,Fax,accountid from contact where accountid in:mp.KeySet()]) 
{
con.Fax=mp.get(con.accountid).fax;
consl.add(con);
}
update consl;
}