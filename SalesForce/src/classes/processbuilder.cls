public class processbuilder {

    List<Account> myList = [SELECT Id, Name FROM Account LIMIT 1000];
    public  processbuilder(){
        for(Account ab : myList){   
            ab.Fax = '546-545-646';
        }  
    }   
}