public class SchemaExample1 
{
public List<SelectOption> options;

public List<SelectOption> getOptions()
{
    return options;
}
    public SchemaExample1()
    {
        options=new List<SelectOption>();
        Map<String,Schema.SObjectType> schemaMap=schema.getGlobalDescribe();
        Set<String> objectSet=schemaMap.keySet();
        for(String s: objectSet)
        {
            SelectOption op=new SelectOption(s,s);
            options.add(op);
        }
    }
}