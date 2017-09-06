public class UserRegistrationController 
{
    public String Name{set;get;}
    public String Email{set;get;}
    public String Address{set;get;}
    public String PhoneNumber{set;get;}
    public String UserName{set;get;}
    public String Password{set;get;}
    public String EmergencyContact{set;get;}
    
    public PageReference doinsert()
    {
        UserRegistration__c ur=new UserRegistration__c();
        ur.Name__c=Name;
        ur.Email__c=Email;
        ur.Address__c=Address;
        ur.Phone_Number__c=PhoneNumber;
        ur.UserName__c=UserName;
        ur.Password__c=Password;
        ur.Emergency_Contact__c=EmergencyContact;
        try{
        upsert ur;    
        }catch(DmlException e)
        {
            e.getMessage();
        }
        PageReference ref=new PageReference('/apex/LoginVF');
        ref.setRedirect(true);
        return ref;
         
    }     
   }