trigger bil_Item_Master_oinsert on bil__Item_Master__c (before insert) {  
    for(bil__Item_Master__c item : Trigger.new){
        item.Name  = 'bil' + (item.Name) ;
    }   
}