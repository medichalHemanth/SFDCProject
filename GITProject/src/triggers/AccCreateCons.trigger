trigger AccCreateCons on Account (after insert) 
{
List<Contact> conlist=new List<Contact>();
for(Account acc:Trigger.new)
{
Contact con=new Contact();
con.LastName=acc.Name;
con.accountid=acc.id;
conlist.add(con);
//con.LastName=Trigger.New[0].Name;
//con.AccountId=Trigger.New[0].id;
}
insert conlist;
}