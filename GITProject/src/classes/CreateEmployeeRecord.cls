public with sharing class CreateEmployeeRecord {
    @AuraEnabled
    public static void createRecord (Employee__c Employee){
        
        try{
            if(Employee != null){
                insert Employee;
            }
            
        } catch (Exception ex){
            
        }
        
    }    
}