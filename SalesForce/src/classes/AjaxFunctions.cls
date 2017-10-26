public class AjaxFunctions {


    public List<Account> accs {get;set;}
    public String message {get;set;}
    public Boolean block1 {get;set;}
    public Boolean block2 {get;set;}
    public DateTime datet {get;set;}

    public AjaxFunctions (){
    
        accs = new List<Account>();
        message = 'Intialized';
        block1 = true ;
        block2 = false ;
    }

    public void ActionAccountData(){
    
        accs = [select id, name , Type , Industry from Account];
    
    }
    
     public void getAccs(){
    
        accs = [select Id, Name from Account limit 10];
        
    }

    public void refresh(){  
    block2 = true ;
        message = 'From action function';
       
    }
    
    public void datess(){
        datet  = system.Now();      
    }
    
    

}