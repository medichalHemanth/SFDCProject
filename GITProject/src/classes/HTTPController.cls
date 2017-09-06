public class HTTPController 
{
    public HTTPController()
    {
        //HTTPRequest Class
     HttpRequest requestparam=new HttpRequest(); 
     requestparam.setEndpoint(Label.ContactsEndpointURL);
     requestparam.setMethod('GET');
        
     HTTP httpparam=new HTTP();
     HttpResponse response=httpparam.send(requestparam);   
    String strResponse=response.getBody();
    System.debug('------Response Body------->'+strResponse);
    
    //JSON Parsing.
    JSONParser parser1=JSON.createParser(strResponse);
        List<String> ContactsIds=new List<String>();
        while(parser1.nextToken()!=null)
        {
            if((parser1.getCurrentToken()==JSONToken.FIELD_NAME)&&(parser1.getText()=='id'))
            {
                parser1.nextToken();
                ContactsIds.add(parser1.getText());
                System.debug('============>'+ContactsIds);
            }
        }
        JSONParser parser2=JSON.createParser(strResponse);
        List<String> ContactNames=new List<String>();
        while(parser2.nextToken()!=null)
        {
            if((parser2.getCurrentToken()==JSONToken.FIELD_NAME)&&(parser2.getText()=='name'))
            {
                              parser2.nextToken();
                              ContactNames.add(parser2.getText());
            }
        }
         JSONParser parser3=JSON.createParser(strResponse);
         List<String> addresses=new List<String>();
        while(parser3.nextToken()!=null)
        {
            if((parser3.getCurrentToken()==JSONToken.FIELD_NAME)&&(parser3.getText()=='address'))
            {
                //Get the Value
                parser3.nextToken();
                //get the list of ids from the response
                addresses.add(parser3.getText());
            }
        }
         JSONParser parser4=JSON.createParser(strResponse);
         List<String> ContactEmails=new List<String>();
        while(parser3.nextToken()!=null)
        {
            if((parser4.getCurrentToken()==JSONToken.FIELD_NAME)&&(parser4.getText()=='email'))
            {
                //Get the Value
                parser4.nextToken();
                //get the list of ids from the response
                ContactEmails.add(parser4.getText());
            }
        }
          JSONParser parser5=JSON.createParser(strResponse);
         List<String> Gender=new List<String>();
        while(parser5.nextToken()!=null)
        {
            if((parser5.getCurrentToken()==JSONToken.FIELD_NAME)&&(parser5.getText()=='gender'))
            {
                //Get the Value
                parser5.nextToken();
                //get the list of ids from the response
                Gender.add(parser5.getText());
            }
        }

            JSONParser parser6=JSON.createParser(strResponse);
            List<String> Mobile=new List<String>();
                while(parser6.nextToken()!=null)
                {
                    if((parser6.getCurrentToken()==JSONToken.FIELD_NAME)&&(parser6.getText()=='gender'))
                 {
                //Get the Value
                parser6.nextToken();
                //get the list of ids from the response
                Mobile.add(parser6.getText());
            }
        }
        lstWI=new List<wrapContacts>();
        for(Integer i=0;i<ContactsIds.size();i++)
        {
            
            objWI=new wrapContacts();
            objWI.id=ContactsIds[i];
            objWI.Name=ContactNames[i];
            objWI.Address=addresses[i];
            objWI.Gender=Gender[i];
            objWI.Email=Gender[i];
            objWI.Mobile=Mobile[i];
            objWI.isChecked=false;
            lstWI.add(objWI);
        }
    }
    public PageReference dosave()
    {
      List<Contact> lstc=new List<Contact>();
        for(wrapContacts objWI:lstWI){
            if(objWi.isChecked==true)
        {
            Contact con=new Contact();
            con.LastName=objWI.Name;
            con.MailingStreet=objWI.Address;
            con.Gender__c=objWI.Gender;
            con.Email=objWI.email;
            con.MobilePhone=objWI.Mobile;
            con.Cid__c=objWI.id;
            lstc.add(con);
            
        }
        }
        if(lstc.size()>0)
        {
            try
            {
            insert lstc;    
            }catch(Exception e)
            {
             E.getMessage();   
            }
        }
        return null;
    }
    public  wrapContacts objWI{set;get;}
    public List<wrapContacts>  lstWI{set;get;}   
    public class wrapContacts
    {
        public Boolean isChecked{set;get;}
        public String id{set;get;}
        public String Name{set;get;}
        public String Address{set;get;}
        public String Gender{set;get;}
        public String Email{set;get;}
        public String Mobile{set;get;}
    }

}