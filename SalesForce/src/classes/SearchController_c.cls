public class SearchController_c {

    public List<Opportunity> opp {set;get;}
    public Integer amount {set;get;}
    public Date datetime_c  {get;set;}
    public Boolean flag1  {get;set;}
    
    public PageReference refreshh() {
        PageReference pageRef = new PageReference(ApexPages.currentPage().getUrl());
        pageRef.setRedirect(true);
        flag1 = false;
        return pageRef;
        
    }

    public void getData(){
        opp = [select Name,StageName,Amount,CloseDate,CreatedDate from  Opportunity];
    }
    public void getSearchData(){ 
    
          flag1 = true;
        if ( (amount != null) && (datetime_c != null)) {
           opp = [select Name,StageName,Amount,CloseDate,CreatedDate from  Opportunity where amount =:amount and CloseDate =:datetime_c ]; 
           system.debug('amount != null && datetime_c != null');      
        } else if ((amount != null) && (datetime_c == null) ) {
           opp = [select Name,StageName,Amount,CloseDate,CreatedDate from  Opportunity where amount =:amount ];
             system.debug('amount != null && datetime_c == null'); 
        } else if ((amount == null) && (datetime_c != null)) {
            
           opp = [select Name,StageName,Amount,CloseDate,CreatedDate from  Opportunity where CloseDate =:datetime_c ];
             system.debug('amount == null && datetime_c != null' + datetime_c ); 
        } else {
           refreshh();
        }     
    }

}