global class asyncronus {

    global static void batch() {
    
    String q = 'SELECT Industry FROM Account ';
    String e = 'Account';
    String f = 'Industry';
    String v = 'Consulting';
    Id batchInstanceId = Database.executeBatch(new UpdateAccountFields(q,e,f,v), 5);
            
    }
    public static void queueable() {
       
    ID jobID = System.enqueueJob(new AsyncExecutionExample());
    }
    @future
    public static void future() {
        
      Account a = new Account(Name = 'Hari',Industry = 'Banking' , Type = 'Prospect');
      insert a;
      
    }


}