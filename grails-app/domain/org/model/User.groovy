package org.model

class User {

   String username
   String email
   String first_name
   String last_name
   String city
   String country
   Date date_of_birth

   static constraints = {
	  username (blank:false, nullable:true) 
	  email (email:true)
    country (nullable:true)
    date_of_birth (nullable:true)
	}

  String toString(){
    return username; 
  }

}
