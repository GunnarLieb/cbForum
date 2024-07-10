component {

  function up( schema, qb ) {
    schema.create( "user_post", function( t ) {
          t.increments( "id" );
          t.timestamp( "createdAt" );
          t.timestamp( "updatedAt" );

          t.integer( "PostId" );
          t.integer( "UserId" );

      } );
  }

  function down( schema, qb ) {
      schema.drop( "user_post" );
  }

}
