global class ScedulableRest implements Schedulable
{
   private final String clientId = '3MVG9ZL0ppGP5UrAcwyxzTaok9a_qVAelEQ2WkKrypKYoMbrPuVqQNuAyHxbVLjsPxto8Dq.PiXZElYO9ONXG';
   private final String clientSecret = '1439948708822514122';
   private final String username = 'medichal.salesforce.com@gmail.com';
   private final String password = 'Th!nksm@rt1alNl5vj9yhUmzxN4Wu40anrv';  
   public class deserializeResponse
   {
      public String id;
      public String access_token;
   }
global void execute(SchedulableContext sc)
{
     callgetContact();   
}
  public String ReturnAccessToken (SendAccountUsingRESTAPI acount)
   {
      String reqbody = 'grant_type=password&client_id='+clientId+'&client_secret='+clientSecret+'&username='+username+'&password='+password;
     Http h = new Http();
      HttpRequest req = new HttpRequest();
      req.setBody(reqbody);
      req.setMethod('GET');
      req.setEndpoint('https://login.salesforce.com/services/oauth2/token');
      HttpResponse res = h.send(req);
     deserializeResponse resp1 = (deserializeResponse)JSON.deserialize(res.getbody(),deserializeResponse.class);
     system.debug('@@@@access_token@@'+resp1 );
      return resp1.access_token;
   }
    public static list<Contact> callgetContact()
   {
           SendAccountUsingRESTAPI acount1 = new SendAccountUsingRESTAPI();
           String accessToken;
           accessToken = acount1.ReturnAccessToken (acount1);
           list<Contact> LstContact=new List<Contact>();
           if(accessToken != null)
           {
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
           HttpResponse res1 = h2.send(req1);
           String trimmedResponse = res1.getBody().unescapeCsv().remove('\\');
           system.debug('@@@RESPONSE@@'+trimmedResponse);
           JSONParser parser = JSON.createParser(res1.getBody());
           set<Contact> contList=new set<Contact>();
            
            while (parser.nextToken() != null) {
                //Phone
                if((parser.getCurrentToken() == JSONToken.FIELD_NAME) ){
                    Contact cont;
                    if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'Phone')) {
                    // Get the value.
                    parser.nextToken();
                    // Compute the grand total price for all invoices.
                    string sphone= parser.getText();
                    cont=new Contact();
                    cont.Phone=sPhone;
                    system.debug('Id@@@' + sphone);
                    
                    parser.nextToken();
                    if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && 
                        (parser.getText() == 'Name')) {
                        // Get the value.
                        parser.nextToken();
                        // Compute the grand total price for all invoices.
                        string sName= parser.getText();
                        cont.LastName=sName;
                        system.debug('Name@@@' + sName );
                    }
                    //Email
                    parser.nextToken();
                    if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && 
                        (parser.getText() == 'Email')) {
                        // Get the value.
                        parser.nextToken();
                        // Compute the grand total price for all invoices.
                        string sEmail= parser.getText();
                        cont.Email=sEmail;
                        system.debug('Email@@@' + sEmail);
                    }

                }
                contList.add(cont); 
                }
 
                contList.remove(null);
                
            }
               
            LstContact.AddAll(contList);
            system.debug('ContList@@@@'+Json.serialize(LstContact));
        }
        return LstContact;
   }
}