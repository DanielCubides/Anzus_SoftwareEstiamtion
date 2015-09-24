package softwareestimation

class Task {

    String name
    String description
    int hours
    double costEstimated
    int priority
    def softwareestimation.Project project
    def softwareestimation.User user
    def softwareestimation.UserHistory userHistory
    static belongsTo = [userhistory: softwareestimation.UserHistory, user:softwareestimation.User, project:softwareestimation.Project]

    static constraints = {
        name(nullable: false, blank: false)
        description(nullable: false, blank: false)
        hours(nullable: true, black: true, range: 0..8)
        costEstimated(nullable: true, black: true,min: 8.toDouble())
        priority(nullable: true, black: true,min: 0, max: 10)


    }


}
