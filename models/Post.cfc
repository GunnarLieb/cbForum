component extends="quick.models.BaseEntity" table="posts" accessors="true" {

    property name="id";
    property name="content";
    property name="plainText";
    property name="postNumber";
    property name="replyingToUsername";
    property name="removed";

    function user() {
        return belongsTo( "User","UserId" );
    }
 
    function thread() {
        return belongsTo( "Thread","ThreadId" );
    }
    //t.integer( "ReplyId" );

}
