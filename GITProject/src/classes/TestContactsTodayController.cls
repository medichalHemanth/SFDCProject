@isTest
public class TestContactsTodayController 
{
static testmethod void testCon()
{
    Event e=new Event();
    e.Subject='Call';
    e.StartDateTime=System.Today();
    e.EndDateTime=System.Now();
    insert e;
    ContactsTodayController ctc=new ContactsTodayController();
}
}