@isTest
public class TestContactAndLeadSearch {
static testmethod void testContact()
{
    Contact con=new Contact(FirstName='hemanth',LastName='Medichal');
    insert con;
    Lead l=new Lead(FirstName='Hemanth',LastName='Medichal',Company='CCS');
    insert l;
    ContactAndLeadSearch ca=new ContactAndLeadSearch();
}
}