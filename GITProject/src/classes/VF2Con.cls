public class VF2Con
{
String hello='how r u?';
public List<Account> result {set;get;}
public VF2Con()
{
result=[select id,name,industry from account];
}
public String getmymethod()
{
return hello;
}
}