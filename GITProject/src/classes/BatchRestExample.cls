global class BatchRestExample implements Database.Batchable<sObject>
{
    /*private final String clientId = '3MVG9ZL0ppGP5UrAcwyxzTaok9a_qVAelEQ2WkKrypKYoMbrPuVqQNuAyHxbVLjsPxto8Dq.PiXZElYO9ONXG';
    private final String clientSecret = '1439948708822514122';
    private final String username = 'medichal.salesforce.com@gmail.com';
    private final String password = 'Th!nksm@rt1alNl5vj9yhUmzxN4Wu40anrv';*/
    
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query ='Select id from contact';
        return Database.getQueryLocator(query);
    }

    global void execute(Database.BatchableContext BC, List<Contact> scope)
    {
        
        SendAccountUsingRESTAPI.callgetContact();
    }
    global void finish(Database.BatchableContext BC)
    {
    }
}