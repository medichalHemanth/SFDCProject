trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

    List<Task> taskList = new List<Task>();

    for(opportunity opp:[SELECT Id,Name,CloseDate, StageName 
                           FROM Opportunity WHERE StageName='Closed Won'])
    {   
            Task t=new Task(); 
            t.Subject = 'Follow Up Test Task';
            t.WhatId = opp.Id;
            tasklist.add(t);
    }
            insert taskList;       
}