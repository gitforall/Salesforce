public class AsyncExecutionExample implements Queueable {
    public void execute(QueueableContext context) {
        Account a = new Account(Name='Acme',Industry='Banking',Phone='(415) 555-1212');
        insert a;        
    }
}