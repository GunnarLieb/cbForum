component extends="coldbox.system.EventHandler" {

    function socket( event, rc, prc ){
		return 
			{ "id" : 1, "name" : "Socket" }
        ;        
    }
    function notification( event, rc, prc ){
		return 
			{ "Notifications" : [], "unreadCount" : 0 }
        ;           
    }    
	function settings( event, rc, prc ){
		return {
                "forumName":"forumName",
			    "forumDescription":"forumDescription",
			    "showDescription": "showDescription" ,         
                "errors":[
                ]
        }
    }
	function log( event, rc, prc ){
		return [
			{ "id" : 2, "name" : "Luis" }
        ];             
    }
	function category( event, rc, prc ){

        if(event.getValue('filter','') != ''){
            return 
                {
                "name": 'All',
                "value": 'ALL',                    
                "Threads": getInstance( "Thread" ).asMemento( includes = ['Category','Posts']).all(),
                "meta": {
                   "nextURL":  '',
                   "nextThreadsCount": 0
                }
            }     
            ;
        }
        return getInstance( "Category" ).asMemento().all();
    }
	function threads( event, rc, prc ){
        return getInstance( "Thread" ).asMemento().all();
    
    }    

    function onException(){
        abort;
    }

}
