package org.model

class Post {

	String title
    String description
    Float latitude
    Float longitude
    String city
    String country
    Integer rating

    Beach beach

    User author

    static hasMany=[comments:Comment]

    Date dateCreated
    Date lastUpdated 
    
    static constraints = {
    }
}
