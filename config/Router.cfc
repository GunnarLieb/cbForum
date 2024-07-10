/**
 * This is your application router.  From here you can controll all the incoming routes to your application.
 *
 * https://coldbox.ortusbooks.com/the-basics/routing
 */
component {

	function configure(){
		/**
		 * --------------------------------------------------------------------------
		 * Router Configuration Directives
		 * --------------------------------------------------------------------------
		 * https://coldbox.ortusbooks.com/the-basics/routing/application-router#configuration-methods
		 */
		setFullRewrites( true );

	    route( pattern="/", target="vue.index", name="vueIndex" );
	    route( pattern="/static/:action/:filename?" ).toHandler( "static" );

		route( pattern="/api/v1/search/:action?" ).toHandler( "search" );

		route( pattern="/api/v1/user/:username/:action?" ).toHandler( "auth" );

	    route( pattern="/api/v1/:action/:filter?" ).toHandler( "api" );
	    route( pattern="/socket.io?",target="api.socket", name="socketIo"  );



		// @app_routes@

		// Conventions-Based Routing
		route( pattern=":handler/:action?",target="vue.index", name="default" ).end();
	}

}
