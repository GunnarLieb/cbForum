component extends="quick.models.BaseEntity" table="threads" accessors="true" {

    property name="id";
    property name="name";
    property name="slug";
    property name="postsCount";
    property name="locked";
    property name="CategoryId";    
    property name="UserId";    
    property name="PollQuestionId";    

    function category() {
        return belongsTo( "Category","CategoryId" );
    }

    function posts() {
       return hasMany( "Post","ThreadId" );
    }    
 
}
