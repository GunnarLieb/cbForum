component extends="coldbox.system.EventHandler" {

    function login( event, rc, prc ){
		return 
			{ "username" : rc.username }
        ;        
    }
}