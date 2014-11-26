package org.model

class Beach {

   String name
   String shortDescription
   String location
   Float latitude
   Float longitude
   String city
   String country
   Date date

   static constraints = {
   	name nullable: false
      shortDescription nullable: false
      latitude nullable: false
      longitude nullable: false

      shortDescription maxSize: 500
   }
}
