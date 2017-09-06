public class SoqlExample2 
{
    public List<Opportunity> acces {set;get;}
    public SoqlExample2()
    {
        acces=[select Name,StageName,Amount,CreatedDate,CloseDate from Opportunity]; 
   
    }
    public void closedAfter2016()
    {
        acces=[select Name,Stagename,Amount,CreatedDate,CloseDate from Opportunity where CloseDate>LAST_N_YEARS:1];
    }
    public void LastYear()
    {
        acces=[select Name,StageName,Amount,CreatedDate,CloseDate from Opportunity where CloseDate=LAST_YEAR];
    }
    public void thisYear()
    {
        acces=[select Name,StageName,Amount,CreatedDate,CloseDate from Opportunity where CloseDate=THIS_YEAR];
    }
    public void thisWeek()
    {
        acces=[select Name,Stagename,Amount,CreatedDate,CloseDate from Opportunity where CloseDate=THIS_WEEK ];
    }
    public void thisMonth()
    {
        acces=[select Name,StageName,Amount,CreatedDate,CloseDate from Opportunity where CloseDate>THIS_MONTH];
    }
}