@isTest
public class TestAdditionExample 
{
public static testmethod void addition()
{
    AdditionExample instance=new AdditionExample();
    instance.a=10;
    instance.b=20;
    instance.display();
    System.assertEquals(30, instance.c);
}
}