component {

  function up( schema, qb ) {
    schema.create( "bans", function( t ) {
          t.increments( "id" );
          t.timestamp( "createdAt" );
          t.timestamp( "updatedAt" );

          t.boolean( "canCreatePosts" );
          t.boolean( "canCreateThreads" );
          t.boolean( "ipBanned" );
          t.text( "message" );
          t.integer( "UserId" );
      } );
  }

  function down( schema, qb ) {
      schema.drop( "bans" );
  }

}


