public class ExceptionHExample1 
{
public void dis()
{
   
    try
    {
        
        Account acc=new Account(Name='Medichal',industry='Technology');
        insert acc;
    }catch(DMLException e)
    {         
       System.debug('this is DML: exception......!'+e.getMessage());
    }catch(Exception e)
    {
        System.debug('this is Exception');
    }finally
    {
        System.debug('this is from in Finally....!s');
    }
}
}