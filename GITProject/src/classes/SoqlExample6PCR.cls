public class SoqlExample6PCR {
    public List<Account> acc{set;get;}
    public Boolean flag1{set;get;} 
    public Boolean flag2{set;get;}
    public void standaredobjectLook()
    {
        flag1=true;
        flag2=false;
        acc=[select name,industry,(select FirstName,LastName from Contacts) from Account];
        
    }
    public void standardobjectCustomLook()
    {
        flag1=true;
        flag2=false;
        acc=[select name,industry,(select FirstName,LastName from Contacts1__r)from Account];
       
    }
}