public class SchemaProgrammingEx1 
{
Public list<selectoption> options {set;get;}
public list<selectoption> getoption()
{
return options;
}
public SchemaProgrammingEx1() 
{
options = new list<selectoption>();
map<string,Schema.SobjectType> mp=Schema.getGlobalDescribe();
set<string> obj = mp.keyset();
for(string s:obj)
{
selectoption op=new selectoption(s,s);
options.add(op);
options.sort();
}
}
}