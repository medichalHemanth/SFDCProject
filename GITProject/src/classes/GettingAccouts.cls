public class GettingAccouts {
  @AuraEnabled
    public static List<Account> getAccountList() {//Fetch data
        return [SELECT Id,Name,AnnualRevenue,Industry from Account Limit 10];
    }    
}