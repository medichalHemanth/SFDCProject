public class LoginClass 
{
    public mailuser__c reg { set; get;}
    public List<mailuser__c> mailuser{get; set;} 	
    public Boolean Match{get; set;}
    public Boolean NoMatch{get; set;}
   
    Public LoginClass(){
        reg = new mailuser__c();
    }
   
   Public PageReference timecardsignin(){
       mailuser =new List<mailuser__c>();
       Match=false;
       NoMatch=false;
       
        mailuser=[select UserName__c, Password__c from mailuser__c where UserName__c =:reg.UserName__c AND Password__c =:reg.Password__c limit 1];
      
       if(mailuser.size()>0)
       {
           Match=true;
        PageReference pageRef = new PageReference('/apex/Welcome');
        pageRef.setRedirect(true);
        return pageRef;
         PageReference rPost = Page.Page2RecievePost;
        rPost.setRedirect(true);
        return rPost;
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