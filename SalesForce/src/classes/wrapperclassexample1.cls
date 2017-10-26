public class wrapperclassexample1 {
    public List<wrapaccount> wrapaccountlist {get;set;}
    public List<Account> selectedAccounts {get;set;}
  
    public wrapperclassexample1 () {
        List<Account> acc = new List<Account>();
        acc= [select Name , Industry from Account];
        
        wrapaccountlist = new list<wrapaccount>();
        
        for(Account a : acc)
        {
            wrapaccountlist.add(new wrapaccount(a));
        }
    }

    public void pressSelected(){
      
        selectedAccounts = new List<Account>();
        for(wrapaccount wrapobj : wrapaccountlist){
            if(wrapobj.isSelected == true)
            {   
                selectedAccounts.add(wrapobj.accn);
            }
        }
    }
    
    public class wrapaccount{
    
        public account accn {get;set;}
        public boolean isSelected {get;set;}
        
        public wrapaccount(account a){
            
            accn = a;
            isSelected = false;
            
        }
    }
}