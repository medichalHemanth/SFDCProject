trigger DuplicatePreventing on Contact (Before insert,Before Update) 
{
for(Contact c:Trigger.new)
{
List<Contact> con=[select id,name from Contact where name=:c.name];
if(con.isempty())
{
c.adderror('this is duplicate contact...!');
}
}
}