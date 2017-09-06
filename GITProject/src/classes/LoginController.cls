public class LoginController {
    public UserRegistration__c reg { set; get;}
    public List<UserRegistration__c> mailuser{get;set;} 	
    public Boolean Match{get;set;}
    public Boolean NoMatch{get; set;}
    public id rid{set;get;}
   
    Public LoginController(){
        reg = new UserRegistration__c();
    }
   
   Public PageReference timecardsignin(){
       mailuser =new List<UserRegistration__c>();
       Match=false;
       NoMatch=false;
        mailuser=[select id,UserName__c, Password__c from UserRegistration__c where UserName__c =:reg.UserName__c AND Password__c =:reg.Password__c limit 1];
       if(mailuser.size()>0)
       {
        rid= mailuser[0].id;  
        System.debug('---------------------------------->'+rid);
        PageReference pageRef = new PageReference('/apex/Welcome?id='+rid);
        pageRef.setRedirect(true);
        return pageRef;
       }
       else
       {   
           NoMatch=true;
           PageReference pageRef = new PageReference('/apex/LoginVF');
           pageRef.setRedirect(true);
           return pageRef;
       }


   }

}