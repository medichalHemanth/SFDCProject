public class SchemaProgrammingEx2 
{
    public String result;
    public SchemaProgrammingEx2()
    {
        Schema.DescribeSObjectResult result=Account.SobjectType.getDescribe();
        System.debug(result);
    }
}