global class ContactServiceWS 
{
webservice static String CreateContact(String LastName,String Phone)
{
    Contact con=new Contact();
    con.LastName=LastName;
    con.Phone=Phone;
    insert con;
    if(con.Id!=Null)
    {
        return 'SUCCESS';
    }else
    {
       return 'false'; 
    }
        }
}