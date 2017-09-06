public class AccountStandardExtension 
{
ApexPages.StandardController scontroller;
public AccountStandardExtension(ApexPages.StandardController controller)
{
    scontroller=controller;
}
    public PageReference savenew()
    {
        scontroller.save();
       PageReference pg=new PageReference('/apex/welcome');
        pg.setRedirect(true);
        return pg;
    }
}