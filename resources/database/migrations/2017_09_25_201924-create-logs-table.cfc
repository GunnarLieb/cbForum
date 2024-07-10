component {

  function up( schema, qb ) {
    schema.create( "logs", function( t ) {
          t.increments( "id" );
          t.timestamp( "createdAt" );
          t.timestamp( "updatedAt" );

          t.string( "ip",45 );
          t.integer( "ThreadId" );
          t.integer( "UserId" );
          t.integer( "SessionUserId" );

      } );
  }

  function down( schema, qb ) {
      schema.drop( "logs" );
  }

}


