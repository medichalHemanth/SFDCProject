//Generated by wsdl2apex

public class AsyncSoapSforceComSchemasClassContactser {
    public class CreateContactResponse_elementFuture extends System.WebServiceCalloutFuture {
        public String getValue() {
            soapSforceComSchemasClassContactser.CreateContactResponse_element response = (soapSforceComSchemasClassContactser.CreateContactResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.result;
        }
    }
    public class AsyncContactServiceWS {
        public String endpoint_x = 'https://ap2.salesforce.com/services/Soap/class/ContactServiceWS';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        public soapSforceComSchemasClassContactser.SessionHeader_element SessionHeader;
        public soapSforceComSchemasClassContactser.CallOptions_element CallOptions;
        public soapSforceComSchemasClassContactser.DebuggingHeader_element DebuggingHeader;
        public soapSforceComSchemasClassContactser.DebuggingInfo_element DebuggingInfo;
        public soapSforceComSchemasClassContactser.AllowFieldTruncationHeader_element AllowFieldTruncationHeader;
        private String SessionHeader_hns = 'SessionHeader=http://soap.sforce.com/schemas/class/ContactServiceWS';
        private String CallOptions_hns = 'CallOptions=http://soap.sforce.com/schemas/class/ContactServiceWS';
        private String DebuggingHeader_hns = 'DebuggingHeader=http://soap.sforce.com/schemas/class/ContactServiceWS';
        private String DebuggingInfo_hns = 'DebuggingInfo=http://soap.sforce.com/schemas/class/ContactServiceWS';
        private String AllowFieldTruncationHeader_hns = 'AllowFieldTruncationHeader=http://soap.sforce.com/schemas/class/ContactServiceWS';
        private String[] ns_map_type_info = new String[]{'http://soap.sforce.com/schemas/class/ContactServiceWS', 'soapSforceComSchemasClassContactser'};
        public AsyncSoapSforceComSchemasClassContactser.CreateContactResponse_elementFuture beginCreateContact(System.Continuation continuation,String LastName,String Phone) {
            soapSforceComSchemasClassContactser.CreateContact_element request_x = new soapSforceComSchemasClassContactser.CreateContact_element();
            request_x.LastName = LastName;
            request_x.Phone = Phone;
            return (AsyncSoapSforceComSchemasClassContactser.CreateContactResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncSoapSforceComSchemasClassContactser.CreateContactResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/schemas/class/ContactServiceWS',
              'CreateContact',
              'http://soap.sforce.com/schemas/class/ContactServiceWS',
              'CreateContactResponse',
              'soapSforceComSchemasClassContactser.CreateContactResponse_element'}
            );
        }
    }
}