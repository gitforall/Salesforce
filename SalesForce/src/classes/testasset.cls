public class testasset {

    public void sample(){  
        List<bil__Asset__c> assetdata ;
        for( integer i =0 ; i <200 ;i++){       
            bil__Asset__c l = new bil__Asset__c( Name = 'Hari' , bil__AssetPrice__c = 100 );
            assetdata.add(l);
        }
        insert assetdata;   
    }
}