public with sharing class OpportunitesCon {
   @AuraEnabled
    public static List<Account> getMyObjects() {

        // Perform isAccessible() checks here 
        return [SELECT Id, Name FROM Account];
    }
}