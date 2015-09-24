package softwareestimation

class Project {

    static hasMany = [tasks: softwareestimation.Task, userhistories: softwareestimation.UserHistory, memberships: softwareestimation.Membership]
    String name
    double velocity
    static constraints = {
        name(blank: false, nullable: false)
        velocity(nullable: true,range: 0..100)
    }
}
