trigger Asset_trigger1 on bil__Asset__c (before insert , before update) {

    for(bil__Asset__c ast : Trigger.New){
        
        if(ast.bil__AssetPrice__c == 100){
            
            ast.Name = 'HArinath ssss';
        }
    }
}