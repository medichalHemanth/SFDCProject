@isTest
public class TestAccCreateCons 
{
static testmethod void AccCreate()
{
    Contact con=new Contact(LastName='Hemanth');
    insert con;
}
}