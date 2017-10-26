@RestResource(urlMapping='/AccountDeatils/*')
global class GetAccountDetails_REST {
    
@HttpGet
global static List<Account> doGet() {
    RestRequest req = RestContext.request;
    Id AccountID = req.params.get('id');
    try {
        List<Account> acc = [SELECT Id, Name, Industry FROM Account ];
        return acc;
    } catch (exception e) {
        return null;
    }  
}

@HttpPost
global static string insertaccount(String Name , String Industry)
{
	Account acc = new Account();
	acc.name = Name;
	acc.Industry = Industry;
	
	try{
		database.insert(acc,false);
		return acc.Id;
	}catch(Exception e){
		System.debug(e);
		return null;
	}
} 

@HttpDelete
  global static String deleteOldCases() {
   RestRequest req = RestContext.request;
    Id AccountID = req.params.get('id');
    try {
        List<Account> acc = [SELECT Id, Name, Industry FROM Account where Id =: AccountID ];
        delete acc;
        return ' Deleted';
    } catch (exception e) {
        return null;
    }  
  }

@HttpPut
global static String updateCase(RestRequest req) {
    String companyName = req.params.get('companyName');
    Account company = [ Select ID, Name, Type, BillingState from Account where Name = :companyName];
  
    Attachment a = new Attachment();
    a.ParentId = company.Id;
    a.Name = 'test.png';
    a.Body = req.requestBody;
    
    insert a;
    
    return 'Attachment added';
}



}