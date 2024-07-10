component {

  function up( schema, qb ) {
    schema.create( "pollAnswers", function( t ) {
          t.increments( "id" );
          t.timestamp( "createdAt" );
          t.timestamp( "updatedAt" );

          t.text( "answer" );
          t.integer( "PollQuestionId" );

      } );
  }

  function down( schema, qb ) {
      schema.drop( "pollAnswers" );
  }

}