trigger DeletingConwithsameName on Account (before insert)
{
List<String> alist=new List<String>();
for(Account acc:Trigger.new)
{
alist.add(acc.name);
}
List<Contact> my=[select id,name from Contact where name in:alist];
delete my;
}