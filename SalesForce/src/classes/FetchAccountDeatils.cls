public class FetchAccountDeatils {
    
    public String keyword {get;set;}
    public List<Account> acc;
    
    public List<Account> getAcc() {
        return acc;
    }
 
    public PageReference showresult(){
 
        if(keyword == null){
          
          ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL,'my error msg');
          ApexPages.addMessage(myMsg);
   
        }else{
            acc = [select Name, Type, industry, Phone, Fax from Account where Name =: keyword];
        }
        return null;
    }
        
}