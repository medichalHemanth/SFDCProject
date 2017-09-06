public class QueueableDemo implements Queueable
{
public void execute(QueueableContext qc)
{
    Account a=new Account(Name='this is the example of Queueable Apex');
    insert a;
}
}