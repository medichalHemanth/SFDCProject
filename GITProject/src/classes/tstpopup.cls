public with sharing class tstpopup {   
    public PostingRides__c ll { get; set; }
    public String Frm{set;get;}
    public String To{set;get;}
    public Boolean displayPopUp { get; set; }
    public List<PostingRides__c> leads { get; set; }
    public List<PostingRides__c> acc{ get; set; }
    public tstpopup(){
       leads=new List<PostingRides__c>();
        acc=new List<PostingRides__c>();
       ll=new PostingRides__c();
      // leads=[select Name__c,Email__c,AvailableSeats__c,DateTime__c,CarModel__c,From__c,To__c from PostingRides__c];
    }

    public PageReference closePopup() {
        displaypopup=false;
        return null;
    }
    
  public PageReference showPopup() {
    string ids=apexpages.currentpage().getparameters().get('window');
      System.debug('this is Currentpage------->'+ids);
    ll =[select Name__c,Phone__c,Contact__c,Email__c from PostingRides__c where id=:ids ];
       displaypopup=true;
        return null;
    }
     public PageReference search()
    {
   // leads= [select Id,Name__c,AvailableSeats__c,DateTime__c,CarModel__c,From__c,To__c from PostingRides__c  where From__c = :Frm and To__c = :To];
    return null;
        

    }

}