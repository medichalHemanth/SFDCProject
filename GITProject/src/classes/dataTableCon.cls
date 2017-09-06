public class dataTableCon 
{
    public id rid{set;get;}
    public PostingRides__c fb;
    public id  recordid=ApexPages.currentPage().getParameters().get('id'); 
    public PostingRides__c getrides()
    {
    
       fb=[Select id,Name__c,Email__c,ProfileID__c,AvailableSeats__c,DateTime__c,CarModel__c,From__c,To__c 
           from PostingRides__c where id =:recordid LIMIT 1];
        return fb;
    }
    public PageReference save()
    {
        rid=string.valueOf(fb.ProfileID__c);
        upsert fb;   
        PageReference pageref=new PageReference('/apex/Welcome?id='+rid);
        pageref.setRedirect(true);
        return pageref;
    }
    public PageReference cancel()
    {
        return null;
    }

}