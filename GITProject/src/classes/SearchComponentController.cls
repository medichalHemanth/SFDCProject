public class SearchComponentController {
public static List<Account> getAccount(String Name)
{
List<Account> acc= [select id,name,industry from account where name=:Name];
return acc;
}
}