component {

  function up( schema, qb ) {
    schema.create( "pollVotes", function( t ) {
          t.increments( "id" );
          t.timestamp( "createdAt" );
          t.timestamp( "updatedAt" );

          t.integer( "UserId" );
          t.integer( "PollAnswerId" );
          t.integer( "PollQuestionId" );

      } );
  }

  function down( schema, qb ) {
      schema.drop( "pollVotes" );
  }

}