public with sharing class insertnewrecordController {

public Asset cds{get; set;}

public Asset setcds(Asset op){
this.cds=op;
return cds;
}
public insertnewrecordController(ApexPages.StandardController controller) {
cds=new Asset();
}

public pagereference Save(){

Asset cd = new Asset();
cd.Name=cds.Name;

insert cd;
Pagereference pg = new Pagereference('/' + cd.id);
pg.setredirect(true);
return pg;


}

}