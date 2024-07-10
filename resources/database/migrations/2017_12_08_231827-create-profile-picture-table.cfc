component {

  function up( schema, qb ) {
    schema.create( "profilePictures", function( t ) {
          t.increments( "id" );
          t.timestamp( "createdAt" );
          t.timestamp( "updatedAt" );

          t.raw( "`file` BLOB" );
          t.string( "mimetype" );

          t.integer( "UserId" );

      } );
  }

  function down( schema, qb ) {
      schema.drop( "profilePictures" );
  }

}
