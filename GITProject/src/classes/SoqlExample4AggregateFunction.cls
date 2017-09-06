public class SoqlExample4AggregateFunction {
  AggregateResult result=[select count(Phone) from Account];
//System.debug(result);
AggregateResult result1=[select sum(amount),min(amount),max(amount) from Opportunity ];
//System.debug(result1.get('expr0'));
//System.debug(result1.get('expr1'));
//System.debug(result1.get('expr2'));
//System.debug(result1);
AggregateResult result2=[select sum(amount)total,min(amount)minm,max(amount)maxm from Opportunity ];
Decimal total=(Decimal)result2.get('total');
Decimal minm=(Decimal)result2.get('minm');
Decimal maxm=(Decimal)result2.get('maxm');
//System.debug(total);
//System.debug(minm);
//System.debug(maxm);


List<AggregateResult> result3=[select StageName,sum(amount)total from opportunity group by StageName];
//for(AggregateResult rs:result3)
{
    //System.debug(rs.get('StageName'));
    //System.debug(rs.get('total'));
}
}