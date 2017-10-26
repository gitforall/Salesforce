trigger LeadInser on Lead (before insert , before update) {
    for(Lead l : Trigger.New){
        if(l.Industry == 'Banking'){
            l.Title = 'Harinath1';
            l.Description = 'sdfgsdgsdfgfsdgsdfgdfgsdf';
        }
    }
}