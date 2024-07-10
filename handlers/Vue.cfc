component
{
	function index(event, rc, prc) 
	{
		event.sendFile( 
			file = expandPath("/modules/forum/frontend/dist/index.html")
			, disposition="inline"
		);
	}

}