component extends="coldbox.system.EventHandler" {

    function thread( event, rc, prc ){
		return 
			{ "id" : 1, "name" : "Luis" }
        ;        
    }
    function user( event, rc, prc ){
		return 
			{ "Notifications" : [], "unreadCount" : 0 }
        ;           
    }
}