component {

  function up( schema, qb ) {
    schema.create( "ips", function( t ) {
          t.increments( "id" );
          t.timestamp( "createdAt" );
          t.timestamp( "updatedAt" );

          t.string( "ip",45 );
          t.integer( "UserId" );
      } );
  }

  function down( schema, qb ) {
      schema.drop( "ips" );
  }

}


