public class SoqlExample1 
{
    public List<Account> accs {set;get;}
    public SoqlExample1()
    {
        
        accs=[select id,Name,Industry from account];
    }
    public void getoffset()
    {
        //offset is used for start from record count
        accs=[select id,name,industry from account offset 5];
        System.debug('offset'+accs);
    }
    public void getLimit()
    {
        accs=[select id,name,industry from account limit 10]; 
        System.debug('LIMIT'+accs);
    }
    public void getAllRecords()
    {
        accs=[select id,name,industry from account ALL ROWS];
        System.debug('All Rows'+accs);
    }
    public void DeletedRecords()
    {
        accs=[select id,name,industry from account where isDeleted=true ALL ROWS];
    }
    public void orderData()
    {
        accs=[select id,name,industry from account order by Name asc];
        
    }
    public void orderDataD()
    {
        accs=[select id,name,industry from account order by Name desc];
    }
    public void getpagination()
    {
        accs=[select id,name,industry from account limit 20 offset 5];//we are going to use in pagination concept
        System.debug('Limit and Off'+accs);
    }
}