package softwareestimation


class UserHistory {

    User collector
    String name
    String description


    def softwareestimation.Project project
    static hasMany = [tasks: softwareestimation.Task]
    static belongsTo = [project:softwareestimation.Project]
    static constraints = {
        collector(nullable: true)
        name(nullable: false, blank: false)
        description(nullable: false, blank: false)
    }
}
