package org.model



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BeachController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Beach.list(params), model:[beachInstanceCount: Beach.count()]
    }

    def map() {
        [beachList: Beach.list()]
    }

    def show(Beach beachInstance) {
        respond beachInstance
    }

    def create() {
        respond new Beach(params)
    }

    @Transactional
    def save(Beach beachInstance) {
        if (beachInstance == null) {
            notFound()
            return
        }

        if (beachInstance.hasErrors()) {
            respond beachInstance.errors, view:'create'
            return
        }

        beachInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'beach.label', default: 'Beach'), beachInstance.id])
                redirect beachInstance
            }
            '*' { respond beachInstance, [status: CREATED] }
        }
    }

    def edit(Beach beachInstance) {
        respond beachInstance
    }

    @Transactional
    def update(Beach beachInstance) {
        if (beachInstance == null) {
            notFound()
            return
        }

        if (beachInstance.hasErrors()) {
            respond beachInstance.errors, view:'edit'
            return
        }

        beachInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Beach.label', default: 'Beach'), beachInstance.id])
                redirect beachInstance
            }
            '*'{ respond beachInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Beach beachInstance) {

        if (beachInstance == null) {
            notFound()
            return
        }

        beachInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Beach.label', default: 'Beach'), beachInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'beach.label', default: 'Beach'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
