public class SendAccountUsingRESTAPI{
    private final String clientId = '3MVG9ZL0ppGP5UrAcwyxzTaok9a_qVAelEQ2WkKrypKYoMbrPuVqQNuAyHxbVLjsPxto8Dq.PiXZElYO9ONXG';
    private final String clientSecret = '1439948708822514122';
    private final String username = 'medichal.salesforce.com@gmail.com';
    private final String password = 'Th!nksm@rt1alNl5vj9yhUmzxN4Wu40anrv';
    public class deserializeResponse
    {
        public String id;
        public String access_token;
    }
    public String ReturnAccessToken(SendAccountUsingRESTAPI acount)
    {
        String reqbody = 'grant_type=password&client_id='+clientId+'&client_secret='+clientSecret+'&username='+username+'&password='+password;
        Http h = new Http();
        HttpRequest req = new HttpRequest();
        req.setBody(reqbody);
        req.setMethod('POST');
        req.setEndpoint('https://login.salesforce.com/services/oauth2/token');
        HttpResponse res = h.send(req);
        deserializeResponse resp1 = (deserializeResponse)JSON.deserialize(res.getbody(),deserializeResponse.class);
        system.debug('@@@@access_token@@'+resp1);
        return resp1.access_token;
    } 
    public static void callgetContact()
    {
        System.debug('Hello');
        SendAccountUsingRESTAPI acount1 = new SendAccountUsingRESTAPI();
        String accessToken;
        accessToken = acount1.ReturnAccessToken (acount1);
        System.debug(accessToken+'####');
        list<Contact> LstContact=new List<Contact>();
        if(accessToken != null){
            String endPoint = 'https://brungi-dev-ed.my.salesforce.com/services/apexrest/v1/getContacts/';
            //String jsonstr = '{"accId" : "' + accId+ '"}';
            Http h2 = new Http();
            HttpRequest req1 = new HttpRequest();
            req1.setHeader('Authorization','Bearer ' + accessToken);
            req1.setHeader('Content-Type','application/json');
            req1.setHeader('accept','application/json');
            //req1.setBody(jsonstr);
            req1.setMethod('GET');
            req1.setEndpoint(endPoint);
            HTTP httpparam=new HTTP();
            HttpResponse response=httpparam.send(req1);   
            String strResponse=response.getBody();
            System.debug('------Response Body------->'+strResponse);
            set<Contact> contList=new set<Contact>();
            JSONParser parser1=JSON.createParser(strResponse);
            List<String> ContactsIds=new List<String>();
            while(parser1.nextToken()!=null)
            {
                if((parser1.getCurrentToken()==JSONToken.FIELD_NAME)&&(parser1.getText()=='id'))
                {
                    parser1.nextToken();
                    ContactsIds.add(parser1.getText());
                    System.debug('====ID=====>'+ContactsIds);
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
                    System.debug('========Name====>'+ContactNames);
                }
            }
            JSONParser parser3=JSON.createParser(strResponse);
            List<String> ContactEmails=new List<String>();
            while(parser3.nextToken()!=null)
            {
                if((parser3.getCurrentToken()==JSONToken.FIELD_NAME)&&(parser3.getText()=='email'))
                {
                    //Get the Value
                    parser3.nextToken();
                    //get the list of ids from the response
                    ContactEmails.add(parser3.getText());
                    System.debug('=========Email==>'+ContactEmails);
                }
            }
            JSONParser parser4=JSON.createParser(strResponse);
            List<String> ContactPhone=new List<String>();
            while(parser4.nextToken()!=null)
            {
                if((parser4.getCurrentToken()==JSONToken.FIELD_NAME)&&(parser4.getText()=='Phone'))
                {
                    //Get the Value
                    parser4.nextToken();
                    //get the list of ids from the response
                    ContactPhone.add(parser4.getText());
                    System.debug('==========Phone======>'+ContactPhone);
                }
            }   
            set<wrapContacts> lstWI=new set<wrapContacts>();    
            wrapContacts objWI;
            for(Integer i=0;i<ContactsIds.size();i++)
            {
                objWI=new wrapContacts();
                System.debug('contact ids  XXXXXX '+ ContactsIds.size());
             	objWI.Id=ContactsIds[i];
                objWI.Name=ContactNames[i];
                objWI.Email=ContactEmails[i];
                objWI.Phone=ContactPhone[i];
                lstWI.add(objWI);
                
            }
            List<Contact> lstc=new List<Contact>();
            System.debug('===============lstWI values it has======>'+lstWI);
            for(wrapContacts objWL:lstWI)
            {
                Contact con=new Contact();
                //con.Id=objWL.id;
                con.LastName=objWL.Name;
                con.Email=objWL.Email;
                con.Phone=objWL.Phone;
                lstc.add(con);    
                System.debug('*********** list we getting **** '+lstWI);
                System.debug('===============lstc final list ======>'+lstc);
            }   
            System.debug('===========Size===========>'+lstc.size());
            if(lstc.size()>0)
            {
                try
                {
                    System.debug('###### records to added to DB #####'+lstc);        
                    insert lstc;      
                    System.debug('inserted the successfully.....!');     
                }catch(DmlException ex)
                {
                    ex.getMessage();
                }
            }
        }
    }
    public class wrapContacts
    {
        public String id{set;get;}
        public String Name{set;get;}
        public String Email{set;get;}
        public String Phone{set;get;}
    }
}