public class TestStandardController {
private final Account acct;
    public TestStandardController(ApexPages.StandardController scontroller)
    {
        this.acct=(Account)scontroller.getRecord();
    }
    public String getgreeting()
    {
        return 'Hello'+acct.Name+'('+acct.Name+')';
    }
        }