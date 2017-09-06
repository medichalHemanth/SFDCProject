global class ScheduleRestAPI implements Schedulable{
    global void execute(SchedulableContext sc)
    {
        BatchRestExample bre = new BatchRestExample();
        Database.executeBatch(bre);
    }
    
}