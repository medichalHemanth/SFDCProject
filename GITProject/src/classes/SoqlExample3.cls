public class SoqlExample3 
{
    public List<Account> acc {set;get;}
    public String accName{set;get;}
    public String accIndustry{set;get;}
    public void Search()
    {
        acc=[select Name,industry from Account where name=:accName and industry=:accIndustry];
        
    }
    public void DynamicSearch()
    {
        String query='select id,name,industry from Account';
       if((accName!=null && accName!='') && (accIndustry!='' && accIndustry!=null))
       {
           query=query+'Where Name=\''+accName+'\' and Industry=\''+accIndustry+'\''; 
       }else
       {
           if(accName!=null && accName!='')
           {
               query=query+'Where name=\''+accName+'\'';
           }else
           {
               if(accIndustry!=null && accIndustry!='' )
               {
                   query=query+' Where Industry=\''+accIndustry+'\'';
               }
           }
       }
        acc=Database.query(query);
    }
}