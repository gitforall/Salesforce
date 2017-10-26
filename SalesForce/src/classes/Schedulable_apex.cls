public class Schedulable_apex implements Schedulable{
    
    public void execute(SchedulableContext sc){
        
        Account a = new Account(Name='Schedulable Apex');
        insert a;
          // Run below code from anonymous clode block
        // ID jobQID = System.enqueueJob(new Queueable_Apex());
    }

}