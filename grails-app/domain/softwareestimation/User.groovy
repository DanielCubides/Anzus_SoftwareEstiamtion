package softwareestimation

class User {

    static hasMany = [tasks: softwareestimation.Task, memberships: softwareestimation.Membership]
    String name
    String password
    double velocity
    String roll
    static constraints = {
        name(blank: false, nullable: false)
        password( nullable: false, maxSize: 20, minSize: 5)
        velocity(blank: true, nullable: true,range: 0..100)
        roll(inList: ["Stakeholder","Developer","ScrumMaster","ProductOwner"])

    }

}
