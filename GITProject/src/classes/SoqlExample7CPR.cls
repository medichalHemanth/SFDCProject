public class SoqlExample7CPR 
{
    public List<Contact> con{set;get;}
    public Boolean flag1{set;get;}
    public Boolean flag2{set;get;}
    public void standardLook()
    {
        flag1=true;
        flag2=false;
        con=[select lastname,firstname,Account.Name,Account.industry from Contact];
    }
    public void CustomLook()
    {
        flag1=true;
        flag2=false;
        con=[select lastname,firstname,AccountContact__r.Name,AccountContact__r.industry from contact];
    }
}