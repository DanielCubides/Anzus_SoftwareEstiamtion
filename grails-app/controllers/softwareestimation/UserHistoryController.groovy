package softwareestimation


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserHistoryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UserHistory.list(params), model: [userHistoryInstanceCount: UserHistory.count()]
    }

    def show(UserHistory userHistoryInstance) {
        respond userHistoryInstance
    }

    def create() {
        respond new UserHistory(params)
    }

    @Transactional
    def save(UserHistory userHistoryInstance) {
        if (userHistoryInstance == null) {
            notFound()
            return
        }

        if (userHistoryInstance.hasErrors()) {
            respond userHistoryInstance.errors, view: 'create'
            return
        }

        userHistoryInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'userHistory.label', default: 'UserHistory'), userHistoryInstance.id])
                redirect userHistoryInstance
            }
            '*' { respond userHistoryInstance, [status: CREATED] }
        }
    }

    def edit(UserHistory userHistoryInstance) {
        respond userHistoryInstance
    }

    @Transactional
    def update(UserHistory userHistoryInstance) {
        if (userHistoryInstance == null) {
            notFound()
            return
        }

        if (userHistoryInstance.hasErrors()) {
            respond userHistoryInstance.errors, view: 'edit'
            return
        }

        userHistoryInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UserHistory.label', default: 'UserHistory'), userHistoryInstance.id])
                redirect userHistoryInstance
            }
            '*' { respond userHistoryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UserHistory userHistoryInstance) {

        if (userHistoryInstance == null) {
            notFound()
            return
        }

        userHistoryInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UserHistory.label', default: 'UserHistory'), userHistoryInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'userHistory.label', default: 'UserHistory'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
