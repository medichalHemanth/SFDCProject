public class ContactSearch 
{
public static List<Contact> searchForContacts(String s1,String s2)
{
     return [select id,name from contact ORDER BY LastName,MailingPostalCode desc  ];
	}
    
    
}