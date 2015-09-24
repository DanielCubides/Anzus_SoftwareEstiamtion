package softwareestimation

class Membership {

    static constraints = {
    }
    def softwareestimation.Project project
    static belongsTo = [user:softwareestimation.User, project:softwareestimation.Project]
    def softwareestimation.User user
}
