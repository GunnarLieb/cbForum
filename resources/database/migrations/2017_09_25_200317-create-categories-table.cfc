component {

  function up( schema, qb ) {
    schema.create( "categories", function( t ) {
          t.increments( "id" );
          t.unicodeString( "name",191 );
          t.unicodeString( "value",191 );
          t.unicodeString( "color",31 );

          t.integer( "UserId" );
      } );
  }

  function down( schema, qb ) {
      schema.drop( "categories" );
  }

}

