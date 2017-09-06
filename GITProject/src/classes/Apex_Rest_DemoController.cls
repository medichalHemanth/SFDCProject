@RestResource(urlMapping='/services/data/v27.0/sobjects/Account/*')
global class Apex_Rest_DemoController {
	
	public String response{get;set;}
    public String accName{get;set;}
    public String accPhone{get;set;}
    public String accWebsite{get;set;}
	
    public PageReference CreateAccount() {
        //find access token using Auth 2.0 
        String Access_Token='00D90000000IExn!AQgAQGAmok5mK0LmFvr9AYm7JA0JxUOMPUxcVcMelv9LsH6Fmqo4R8rLwjNFaeHbpYowC.LZbN0yqKdM9ouu9is2tEctGMO';
        Httprequest req=new httprequest();
        String endPointURL='https://medichalhemi-developer-edition.ap4.force.com/services/data/v27.0/sobjects/Account';
        req.setendpoint(endPointURL);
        req.setHeader('Content-Type', 'application/xml; charset=utf-8');
        req.setBody('<?xml version="1.0" encoding="UTF-8" ?><request><name>'+accName+'</name><phone>'+accPhone+'</phone><website >'+accWebsite+'</website > </request>');
        req.setmethod('POST');
        req.setHeader('Authorization','Authorization: Bearer '+Access_Token);
        Http http = new Http();
        HTTPResponse res = http.send(req);
        response=res.getbody();
        System.debug('****************res.getStatusCode();'+res.getStatusCode());
        System.debug('****************res.getbody();'+res.getbody());
        return null;
    }
}