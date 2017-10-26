@isTest
public class TestClassForAsset {
    static testmethod void a1(){    
       List<bil__Asset__c> accts = new List<bil__Asset__c>();
        for(Integer i=0;i<10;i++) {
            bil__Asset__c a = new bil__Asset__c(Name='Acme' + i,
            bil__AssetPrice__c=100);
           accts.add(a);
        }
        Test.startTest();
        insert accts;   
        Test.stopTest();
        List<bil__Asset__c> inserted_reds = [select Name from bil__Asset__c where ID IN :accts];     
        for(bil__Asset__c asset : inserted_reds){         
            System.assertEquals(asset.Name, 'HArinath ssss');
        }
    }   
}