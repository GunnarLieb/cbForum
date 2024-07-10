component {

  function up( schema, qb ) {
    schema.create( "sessions", function( t ) {
          t.increments( "sid" );
          t.timestamp( "expires" );

          t.text( "data" );
      } );
  }

  function down( schema, qb ) {
      schema.drop( "sessions" );
  }

}
