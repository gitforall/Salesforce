public class Batchable_Apex implements Database.Batchable<SObject>{

    String query;
    String field;
    String value;
    
    public Batchable_Apex(String q , String f ,String v){
        query = q;
        field = f;
        value = v;
    }
    public Database.QueryLocator start(Database.BatchableContext bc){
        
        return Database.getQueryLocator(query);
    }     
    public void execute(Database.BatchableContext bc , List<Account> acc){
            for(Account a : acc){
                a.put(field , value);
            }
            update acc;
    } 
    public void finish(Database.BatchableContext bc){
        //String q = 'select Name , Description from Account';
		//String f = 'Description';
		//String v = 'Qualble apex';
		//ID jobID = Database.executeBatch(new Batchable_Apex(q,f,v));

    }

}