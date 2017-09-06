trigger AccUpdateConsUpdate on Account (after insert) 
{
List<Contact> ls=new List<Contact>();
for(Account acc:Trigger.new)
{
Contact con=new Contact();
con.lastname=acc.name;
con.Accountid=acc.id;
ls.add(con);
}
insert ls; 
}