global class MyWebService {
    webService static String makeContact(String AssetName, Integer AssetPrice) {
        Asset__c ast = new Asset__c();
        ast.Name = AssetName;
        ast.AssetPrice__c = AssetPrice;
        insert ast ;
        
        if(ast.Id != NULL){
        return 'success';
        
        }else{
        return 'Failure';
        }
        
    }

}