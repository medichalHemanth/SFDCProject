//Generated by wsdl2apex

public class AsyncSoapSforceComSchemasClassAccountser {
    public class CreateCustomerResponse_elementFuture extends System.WebServiceCalloutFuture {
        public String getValue() {
            soapSforceComSchemasClassAccountser.CreateCustomerResponse_element response = (soapSforceComSchemasClassAccountser.CreateCustomerResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.result;
        }
    }
    public class AsyncAccountService {
        public String endpoint_x = 'https://ap2.salesforce.com/services/Soap/class/AccountService';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        public soapSforceComSchemasClassAccountser.DebuggingHeader_element DebuggingHeader;
        public soapSforceComSchemasClassAccountser.SessionHeader_element SessionHeader;
        public soapSforceComSchemasClassAccountser.AllowFieldTruncationHeader_element AllowFieldTruncationHeader;
        public soapSforceComSchemasClassAccountser.DebuggingInfo_element DebuggingInfo;
        public soapSforceComSchemasClassAccountser.CallOptions_element CallOptions;
        private String DebuggingHeader_hns = 'DebuggingHeader=http://soap.sforce.com/schemas/class/AccountService';
        private String SessionHeader_hns = 'SessionHeader=http://soap.sforce.com/schemas/class/AccountService';
        private String AllowFieldTruncationHeader_hns = 'AllowFieldTruncationHeader=http://soap.sforce.com/schemas/class/AccountService';
        private String DebuggingInfo_hns = 'DebuggingInfo=http://soap.sforce.com/schemas/class/AccountService';
        private String CallOptions_hns = 'CallOptions=http://soap.sforce.com/schemas/class/AccountService';
        private String[] ns_map_type_info = new String[]{'http://soap.sforce.com/schemas/class/AccountService', 'soapSforceComSchemasClassAccountser'};
        public AsyncSoapSforceComSchemasClassAccountser.CreateCustomerResponse_elementFuture beginCreateCustomer(System.Continuation continuation,String Name,String Phone,String City) {
            soapSforceComSchemasClassAccountser.CreateCustomer_element request_x = new soapSforceComSchemasClassAccountser.CreateCustomer_element();
            request_x.Name = Name;
            request_x.Phone = Phone;
            request_x.City = City;
            return (AsyncSoapSforceComSchemasClassAccountser.CreateCustomerResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncSoapSforceComSchemasClassAccountser.CreateCustomerResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/schemas/class/AccountService',
              'CreateCustomer',
              'http://soap.sforce.com/schemas/class/AccountService',
              'CreateCustomerResponse',
              'soapSforceComSchemasClassAccountser.CreateCustomerResponse_element'}
            );
        }
    }
}