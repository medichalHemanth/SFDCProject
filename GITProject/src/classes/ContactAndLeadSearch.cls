public class ContactAndLeadSearch 
{
public static List<List<SObject>> searchContactsAndLeads(String Smith)  
{
    List<List<SObject>> SearchList=[Find:Smith IN ALL FIELDS RETURNING Contact(FirstName,LastName),Lead(FirstName,LastName)];
    return SearchList;
}
}