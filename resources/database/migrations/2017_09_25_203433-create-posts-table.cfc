component {

  function up( schema, qb ) {
    schema.create( "posts", function( t ) {
          t.increments( "id" );
          t.timestamp( "createdAt" );
          t.timestamp( "updatedAt" );
          t.text( "content" );
          t.text( "plainText" );

          
          t.integer( "postNumber" );
          t.string( "replyingToUsername" );
          t.boolean( "removed" ).default(0);

          t.integer( "UserId" );
          t.integer( "ThreadId" );
          t.integer( "ReplyId" );

      } );
  }

  function down( schema, qb ) {
      schema.drop( "posts" );
  }

}

