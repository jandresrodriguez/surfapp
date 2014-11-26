import org.model.User
class BootStrap {


    def init = { servletContext ->
    	User user = new User(username: "123", email: "123@asd.asd", first_name: "asd", last_name: "123123", city: "asdasd" )
    	user.save(failOnError: true, flush: true)
    }
    def destroy = {
    }
}
