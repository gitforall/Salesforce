public class DateFunctionality {

    public List<Opportunity> opp {set;get;}  
    public void getData(){
        opp = [select Name,StageName,Amount,CloseDate,CreatedDate from  Opportunity];
    }
    public void closedInLastYears(){  
        opp = [select Name,StageName,Amount,CloseDate,CreatedDate  from  Opportunity where CloseDate = LAST_N_YEARS:5];    
    }
    public void LastYear(){  
        opp = [select Name,StageName,Amount,CloseDate,CreatedDate  from  Opportunity where CloseDate = LAST_YEAR];  // Current Year  
    }
     public void ThisYear(){  
        opp = [select Name,StageName,Amount,CloseDate,CreatedDate  from  Opportunity where CloseDate > LAST_YEAR];  
    }
     public void ThisMonth(){  
        opp = [select Name,StageName,Amount,CloseDate,CreatedDate  from  Opportunity where CloseDate = THIS_MONTH ];   
    }
     public void ThisWeek(){  
        opp = [select Name,StageName,Amount,CloseDate,CreatedDate  from  Opportunity where CloseDate = THIS_WEEK ];  
    }
     public void LastNMonth(){  
        opp = [select Name,StageName,Amount,CloseDate,CreatedDate  from  Opportunity where CloseDate > LAST_N_MONTHS:2];   
    }
}