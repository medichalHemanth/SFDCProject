public class SaveTestUser {
    
    @AuraEnabled 
    public static Contact saveUser(String lastname) {  
    
        Contact testUser = new Contact(LastName=lastname);

        upsert testUser;
        return testUser;
    }

}