component {

  function up( schema, qb ) {
    schema.create( "adminTokens", function( t ) {
          t.increments( "id" );
          t.timestamp( "createdAt" );
          t.timestamp( "updatedAt" );

          t.string( "token" );
          t.integer( "UserId" );

      } );
  }

  function down( schema, qb ) {
      schema.drop( "adminTokens" );
  }

}
