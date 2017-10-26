public class Queueable_Apex implements Queueable {

    public void execute(QueueableContext qc){
        
        Account a = new Account (Name = 'Quable Apex' );
            insert a;
    }
    
}