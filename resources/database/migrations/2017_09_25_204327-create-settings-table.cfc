component {

  function up( schema, qb ) {
    schema.create( "settings", function( t ) {
          t.increments( "id" );
          t.timestamp( "createdAt" );
          t.timestamp( "updatedAt" );
          t.boolean( "showDescription" ).default(0);


          t.string( "forumName" );
          t.text( "forumDescription" );
      } );
  }

  function down( schema, qb ) {
      schema.drop( "settings" );
  }

}
