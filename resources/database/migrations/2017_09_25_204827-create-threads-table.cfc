component {

  function up( schema, qb ) {
    schema.create( "threads", function( t ) {
          t.increments( "id" );
          t.timestamp( "createdAt" );
          t.timestamp( "updatedAt" );

          t.string( "Name" );
          t.string( "Slug" );
          t.integer( "postsCount" ).default(0);
          t.boolean( "locked" ).default(0);
          t.integer( "CategoryId" ).default(0);
          t.integer( "UserId" ).default(0);
          t.integer( "PollQuestionId" ).default(0);

      } );
  }

  function down( schema, qb ) {
      schema.drop( "threads" );
  }

}
