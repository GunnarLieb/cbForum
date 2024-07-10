component {

  function up( schema, qb ) {
    schema.create( "postNotifications", function( t ) {
          t.increments( "id" );
          t.timestamp( "createdAt" );
          t.timestamp( "updatedAt" );

          t.integer( "UserId" );
          t.integer( "PostId" );
          t.integer( "NotificationId" );

      } );
  }

  function down( schema, qb ) {
      schema.drop( "postNotifications" );
  }

}
