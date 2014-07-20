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
    
    @RemoteAction
    global static void createContact(string FirstName, string LastName) {
        System.debug('Test2');
        Contact c = new Contact(FirstName=FirstName,LastName=LastName);
        insert c;
        //return c.Id;
        
    }
}