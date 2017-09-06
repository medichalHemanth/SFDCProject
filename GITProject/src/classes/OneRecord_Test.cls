@isTest
public class OneRecord_Test {
    public static testmethod void myFuntion(){
        Set<Id> myList=new Set<Id>();
        Employee__c emp2=new Employee__c();
        emp2.Name ='Employee 1';
        emp2.Salary__c =12345;
        emp2.Phone_Number__c  ='9876543210';
        insert emp2;
        
        Set<Id> myList2=new Set<Id>();
        Employee__c emp1=new Employee__c();
        emp1.Name ='Employee 1';
        emp1.Salary__c =12345;
        emp1.Phone_Number__c  ='9876543210';
        try{
        	insert emp1;
        }
        catch(Exception e){
            System.Assert(e.getMessage().contains('FIELD_CUSTOM_VALIDATION_EXCEPTION'));
			System.Assert(e.getMessage().contains('One record allowed..!'));
        }
        
        myList2.add(emp2.Id);
        myList.add(emp1.Id);   
    }
}