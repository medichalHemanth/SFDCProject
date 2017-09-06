public class dataTableConseating {
List<Contact> contacts;
public List<Contact> getContacts() {

if(contacts == null) contacts = [select name, Email, DoNotCall from contact];

return contacts ;

}
}