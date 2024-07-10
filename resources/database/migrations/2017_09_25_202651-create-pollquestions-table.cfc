component {

  function up( schema, qb ) {
    schema.create( "pollQuestions", function( t ) {
          t.increments( "id" );
          t.timestamp( "createdAt" );
          t.timestamp( "updatedAt" );

          t.text( "question" );
          t.integer( "UserId" );

      } );
  }

  function down( schema, qb ) {
      schema.drop( "pollQuestions" );
  }

}