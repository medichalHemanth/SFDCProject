trigger DuplicateEmail on Lead (before insert, before update) 
{
for(lead l:Trigger.new)
{
List<Contact> dupes=[select id,name from contact where Email=:l.email];
if(dupes!=null&&dupes.size()>0)
{
String errormsg='this is email already exsisted...!';
 errormsg+='Record id is'+dupes[0].id;
 l.adderror(errormsg);

}
}
}