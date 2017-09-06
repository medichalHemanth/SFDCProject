public class EmployeeController {
@AuraEnabled
    public static List<Employee__c> employeeList()
    {
        return [select Id,name,Phone_Number__c,Salary__c from Employee__c];
    }
}