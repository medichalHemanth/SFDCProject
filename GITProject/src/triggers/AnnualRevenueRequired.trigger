trigger AnnualRevenueRequired on Account (before Insert,Before Update) 
{
for(Account acc:Trigger.new)
{
if(acc.AnnualRevenue==null)
{
acc.adderror('this is value Required...!or Above 10,000/-');
}
}
}