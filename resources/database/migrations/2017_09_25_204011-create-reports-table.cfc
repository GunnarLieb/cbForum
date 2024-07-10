component {

  function up( schema, qb ) {
    schema.create( "reports", function( t ) {
          t.increments( "id" );
          t.timestamp( "createdAt" );
          t.timestamp( "updatedAt" );

          t.string( "reason",45 );
          t.integer( "FlaggedByUserId" );
          t.integer( "PostId" );

      } );
  }

  function down( schema, qb ) {
      schema.drop( "reports" );
  }

}
