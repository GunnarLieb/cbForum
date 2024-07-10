component {

  function up( schema, qb ) {
    schema.create( "users", function( t ) {
          t.increments( "id" );
          t.timestamp( "createdAt" );
          t.timestamp( "updatedAt" );

          t.string( "username",191 );
          t.text( "description" ).nullable();
          t.text( "picture" ).nullable();

          t.string( "color",45 ).nullable();
          t.string( "hash" );
          t.boolean( "admin" ).default(0);

          t.integer( "IpId" );
          t.integer( "UserId" );

      } );
  }

  function down( schema, qb ) {
      schema.drop( "users" );
  }

}
