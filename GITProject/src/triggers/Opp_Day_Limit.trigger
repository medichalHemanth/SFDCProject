trigger Opp_Day_Limit on Opportunity (Before Insert,Before Update) 
{
Opportunity_Amount_Day_Limit oa=new Opportunity_Amount_Day_Limit();
oa.opp_check_amount(Trigger.New);
}