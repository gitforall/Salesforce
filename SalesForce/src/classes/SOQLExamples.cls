public class SOQLExamples {

    public String SearchKeyword {set;get;}
    public List<Account> accs {set;get;}
    
    public void getData(){
        
       // accs = [select Id , Name , Industry , Phone from Account where Industry = 'Banking' and isDeleted = false limit 5  All Rows ];
       //accs = [select Id , Name , Industry , Phone from Account where Industry = 'Banking' limit 5  All Rows ];
       //accs = [select Id , Name , Industry , Phone from Account where Industry = 'Banking' offset 5 ];
         accs = [select Id , Name , Industry , Phone from Account where Industry =:  SearchKeyword  order by Name asc  limit 5 offset 2 ]; // used for pagination offset cant be more than 2000
    }
    
}