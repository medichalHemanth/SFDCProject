global class AccountService
{
webservice static String CreateCustomer(String name,String phone,String city)
{
Account acc=new Account();
acc.Name=Name;
acc.Phone=phone;
acc.BillingCity=city;
insert acc;
if(acc.Id!=null)
{
return 'success';
}else
{
return 'failure';
}
}
}