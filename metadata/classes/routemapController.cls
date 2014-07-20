global with sharing class routemapController {

    public routemapController() {

    }


    global routemapController(ApexPages.StandardController controller) {

    }
        

    global PageReference loginProfile(){
        System.debug('Submitting details::');
                return null;
    }
    
    @RemoteAction
    global static void sampleRemote(String FirstName){
        System.debug('Test11');
        //return 'Vasu';
    }
    
//    @RemoteAction
    
    
    @RemoteAction
    global static boolean createContact(string FirstName, string LastName) {
        System.debug('Test2');
        Contact c = new Contact();

        List<Contact> cs = [select id, FirstName, LastName from Contact];

        for(Contact c2: cs){
            if(c2.FirstName == FirstName && c2.LastName == LastName){
                c = c2;
            }
        }
        System.debug('contact is'+c.id);
        if(c==null){
            return false;
        }
        else{
            return true;
        }
    //        insert c;
        //return c.Id;
        
    }
}