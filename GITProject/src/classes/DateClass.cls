public class DateClass 
{
public void DateExamples()
{
    //Adding Days Example
Date myDate1 = Date.newInstance(1960, 2, 17);
Date newDate1 = mydate1.addDays(2);
System.debug('this addDays Syntax'+newdate1);
//Adding Months Example
date myDate2 = date.newInstance(1990, 11, 21);
date newDate2 = myDate2.addMonths(3);
date expectedDate = date.newInstance(1991, 2, 21);
system.assertEquals(expectedDate, newDate2);
System.debug('this is add months '+newDate2);
//Adding years Example
date mydate3=Date.newInstance(1990,02, 29);
date newdate3=mydate3.addYears(2);
System.debug('this is Years Example'+newdate3);
}
}