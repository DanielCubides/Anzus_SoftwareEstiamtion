package softwareestimation


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MembershipController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Membership.list(params), model: [membershipInstanceCount: Membership.count()]
    }

    def show(Membership membershipInstance) {
        respond membershipInstance
    }

    def create() {
        respond new Membership(params)
    }

    @Transactional
    def save(Membership membershipInstance) {
        if (membershipInstance == null) {
            notFound()
            return
        }

        if (membershipInstance.hasErrors()) {
            respond membershipInstance.errors, view: 'create'
            return
        }

        membershipInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'membership.label', default: 'Membership'), membershipInstance.id])
                redirect membershipInstance
            }
            '*' { respond membershipInstance, [status: CREATED] }
        }
    }

    def edit(Membership membershipInstance) {
        respond membershipInstance
    }

    @Transactional
    def update(Membership membershipInstance) {
        if (membershipInstance == null) {
            notFound()
            return
        }

        if (membershipInstance.hasErrors()) {
            respond membershipInstance.errors, view: 'edit'
            return
        }

        membershipInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Membership.label', default: 'Membership'), membershipInstance.id])
                redirect membershipInstance
            }
            '*' { respond membershipInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Membership membershipInstance) {

        if (membershipInstance == null) {
            notFound()
            return
        }

        membershipInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Membership.label', default: 'Membership'), membershipInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'membership.label', default: 'Membership'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
