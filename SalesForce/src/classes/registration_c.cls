public class registration_c {

    public registration_c() {

    }


public String firstname {get; set;}
public String lastname {get; set;}
public String email{get; set;}
public String phone{get; set;}
public String company{get; set;}
public String location{get; set;}
public String state {get;set;}
public String city {get;set;}

  
    
    public PageReference dosave() {
    
        bil__Registration__c reg = new bil__Registration__c ();
        reg.Name = firstname ;
        reg.bil__Last_Name__c = lastname ;
        reg.bil__Email__c = email;
        reg.bil__Phone__c =  phone;
        reg.bil__company__c = company;
        reg.bil__Location__c = location;
        reg.bil__State__c = state ;
        reg.bil__City__c = city ;
        insert reg ;

        return null ; 
        
     }

    public List<SelectOption> getStates()
    {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('None','--- None ---'));        
        options.add(new SelectOption('TN','TamilNadu'));
        options.add(new SelectOption('KL','Kerala'));
        return options;
    } 
    
    public List<SelectOption> getCities()
    {
        List<SelectOption> options = new List<SelectOption>();
        if(state == 'TN')
        {       
            options.add(new SelectOption('CHE','Chennai'));
            options.add(new SelectOption('CBE','Coimbatore'));
        }
        else if(state == 'KL')
        {       
            options.add(new SelectOption('COA','Coachin'));
            options.add(new SelectOption('MVL','Mavelikara'));
        }
        else
        {
            options.add(new SelectOption('None','--- None ---'));
           
        }      
        return options;
    }  
}