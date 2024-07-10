component {

  function up( schema, qb ) {
    schema.create( "notifications", function( t ) {
          t.increments( "id" );
          t.timestamp( "createdAt" );
          t.timestamp( "updatedAt" );

          t.boolean( "interacted" ).default(0);
          t.boolean( "read" ).default(0);
          t.string( "type",45 );
          t.integer( "UserId" );

      } );
  }

  function down( schema, qb ) {
      schema.drop( "notifications" );
  }

}