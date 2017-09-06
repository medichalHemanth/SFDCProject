public class Opportunity_Amount_Day_Limit 
{
Double total_Amount =0;
    public void opp_check_amount(List<Opportunity> ops)
    {
       for(Opportunity o1: [select amount from Opportunity where CreatedDate=Today AND CreatedByID = :UserInfo.getUserID()])
       {
           total_Amount=total_Amount+o1.Amount;	
       }
        for(Opportunity o2: ops)
        {
            total_Amount=total_Amount+o2.Amount;
            if(total_Amount>100000)
             o2.adderror('Day limit only 1,00000...!');
        }
    }
}