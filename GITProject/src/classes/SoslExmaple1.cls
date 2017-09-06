public class SoslExmaple1 
{
    String keyword;
    List<Account> results;
    public String getkeyword()
    {
        return keyword;
    }
    public List<Account> getresults()
    {
        return results;
    }
    public void setkeyword(String input)
    {
        keyword=input;
    }
    public pageReference Search_now()
    {
        results=(List<Account>)[FIND:keyword IN ALL FIELDS RETURNING Account(Name,Type,Industry,Phone,Fax)][0];
        return null; 
    }
}