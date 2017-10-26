public class dataTableCon {

  
    List<contact> contacts ;

    public List<contact> getcontacts() {
        if(contacts == null)
            contacts = [Select name,account.Name from contact];
        return contacts;
    }

}