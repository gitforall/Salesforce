public class AjaxFunctions1 {

    public List<Account> accs;
    
    public AjaxFunctions1 (){
    
        accs = new List<Account>();
    
    }


    public List<Account> getAccs(){
    
        accs = [select Id, Name from Account];
        return accs;
    }


}