component {

  function up( schema, qb ) {
    schema.create( "user_ip", function( t ) {
          t.increments( "id" );
          t.timestamp( "createdAt" );
          t.timestamp( "updatedAt" );

          t.integer( "IpId" );
          t.integer( "UserId" );

      } );
  }

  function down( schema, qb ) {
      schema.drop( "user_ip" );
  }

}
