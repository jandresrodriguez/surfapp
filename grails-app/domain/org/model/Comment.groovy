package org.model

class Comment {

	String comment

	User author

	Post parent
    
    Date dateCreated
    Date lastUpdated 

    static constraints = {
    }
}
