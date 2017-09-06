public class SetterandGetterDemo 
{
public String name;
public Integer age;
public void setval(String name,Integer age)
{
    this.name=name;
    this.age=age;
}
   public SetterandGetterDemo()
   {
       System.debug(name+' '+age);
   }
         
}