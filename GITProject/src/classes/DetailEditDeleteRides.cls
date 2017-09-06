public class DetailEditDeleteRides 
{
  private List<Opportunity> oppz;
  private Contact cntact;
  public DetailEditDeleteRides(ApexPages.StandardController controller) {
  this.cntact=(Contact)controller.getRecord();
 }
 public List<Opportunity> getOppz()
 {
     Contact con = [Select id, Account.id FROM Contact where id =:cntact.id];
     if(con.Account==null)
     return null;
     oppz = [Select id, Name, Account.Name, CloseDate, Amount, Type from Opportunity where Account.id =: con.Account.Id];
     return oppz;
 }
 public Pagereference editOpp()
 {
     String oppid= ApexPages.currentPage().getParameters().get('oppid'); 
     
    return new PageReference('/006/e?id='+oppid+'&retURL=/006/');
 }
  public Pagereference deleteOpp()
 {
     String oppid= ApexPages.currentPage().getParameters().get('oppid'); 
     
     Opportunity opp = [Select id from Opportunity where id =:oppid limit 1];
     if(opp !=null && opp.id !=null){
      delete opp;
     }
    return null;
 }
 
}