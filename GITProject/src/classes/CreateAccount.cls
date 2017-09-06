public with sharing class CreateAccount{
@AuraEnabled

public static Account saveAccount (Account acc) {

upsert acc;
return acc;
}
}