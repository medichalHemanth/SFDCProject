public class SchemaObjects 
{ 
    public List<SelectOption> objects{set;get;}
    public List<SelectOption> fsoptions{set;get;}
    public List<SelectOption> fnsoptions{set;get;}
    public List<String> objList{set;get;}
    public Map<String,schema.SObjectField> mfields;
    public List<String> fields{set;get;}
    public Set<String> fselected{set;get;}
    public Set<String> fnotselected{set;get;} 
    public Map<String,Schema.SObjectType> mobject{set;get;}
    public String selectedobj {set;get;}
    public String objDescription {set;get; }
    public List<String> sfields{set;get;}
    public List<String> rfields{set;get;}
    public List<String> myfields{set;get;}
    public List<sobject> mydata{set;get;}
    public String query{set;get;}
    public SchemaObjects()
    {
        mydata=new List<sobject>();
        myfields=new List<String>();
        objects=new List<SelectOption>();
        objList=new List<String>();
        sfields=new List<String>();
        rfields=new List<String>();
        fields=new List<String>();
        fselected=new Set<String>();
        fnotselected=new Set<String>();
        fnsoptions=new List<SelectOption>();
        fsoptions=new List<SelectOption>();
        mobject=Schema.getGlobalDescribe();
        objList.addAll(mobject.keyset());
        objlist.sort();
        SelectOption p=new SelectOption('None','-None-');
        objects.add(p);
        for(String s:objList)
        {
           SelectOption op=new SelectOption(s,s);
            objects.add(op);
        }
            
    }
       public void details()
       {
           Schema.DescribeSObjectResult myobj=mobject.get(selectedobj).getDescribe();
           objDescription=''+myobj;
           mfields=mobject.get(selectedobj).getDescribe().fields.getMap();
           fields.addAll(mfields.keySet());
           fields.sort();
           fnotselected.addAll(fields);
           show();

       }
    public void show()
    {
        fnsoptions.clear();
        fsoptions.clear();
        for(String s:fnotselected)
        {
            SelectOption op=new SelectOption(s,s);
            fnsoptions.add(op);
        }
        for(String s1:fselected)
        {
            SelectOption op1=new SelectOption(s1,s1);
            fsoptions.add(op1);
        }
    }
    public void addFields()
    {
        fnotselected.removeAll(sfields);
        fselected.addAll(sfields);
        show();
    }
    public void removeFields()
    {
        fnotselected.addAll(rfields);
        fselected.removeAll(rfields);
        show();	
    }
    public void queryMydata()
    {
        query='select id';
        myfields.addAll(fselected);
        for(String s:fselected)
        {
          query=query+', '+s;  
        }
        query=query+'from'+selectedobj;
        mydata=Database.query(query);
    }
}