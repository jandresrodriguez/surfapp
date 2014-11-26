package org.model

class Comment {

	String comment

	User author

	Post parent
    
    Date dateCreated
    Date lastUpdated 

    static constraints = {
   		comment nullable: false
		author nullable: false
		parent nullable: false

		comment maxSize: 500
	}

	String toString(){
		return comment; 
	}
}
