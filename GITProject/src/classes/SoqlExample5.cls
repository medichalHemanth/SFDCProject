public class SoqlExample5 
{
    public List<Account> accs{set;get;}
    public void standardLook()
    {
        accs=[select name,industry,(select LastName,FirstName from contacts) from Account];
    }
    public void standardObejctCustomLook()
    {
        accs=[select name,industry,(select lastname,firstname from Contacts) from Account ];
    }
}