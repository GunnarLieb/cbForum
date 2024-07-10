component
{
    function css(event, rc, prc) 
    {
        // add caching here later
        // we want to avoid that the file is loaded for each request from file system
        event.sendFile( 
            file = expandPath("/modules/forum/frontend/dist/css/#rc.filename#")
            , disposition="inline"
        );
    }
    function js(event, rc, prc) 
    {

        // add caching here later
        // we want to avoid that the file is loaded for each request from file system
        event.sendFile( 
            file = expandPath("/modules/forum/frontend/dist/js/#rc.filename#")
            , disposition="inline"
        );
    }
}