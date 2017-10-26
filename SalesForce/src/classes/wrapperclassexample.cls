public class wrapperclassexample {

    public List<Account> selectedAccount {get;set;}


    public PageReference dispalydetails() {
        return null;
    }

    public List<Account> getAccountData() {
        
                List<Account> acc = new List<Account>();
                acc= [select Name , Industry from Account];
            return acc;
    }

}