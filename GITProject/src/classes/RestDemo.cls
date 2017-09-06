@RestResource(urlMapping='/showAccount/*')
global class RestDemo
{
@HttpGet
global static List<Account> getAccount()
{
List<Account> acc;
try
{
acc=[select Id,name from Account limit 10];
return acc;
}catch(Exception ex)
{
system.debug(ex.getMessage());
}
return acc;
}
}