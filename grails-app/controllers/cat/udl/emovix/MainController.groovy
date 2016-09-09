package cat.udl.emovix

import grails.plugin.springsecurity.annotation.Secured

class MainController {
    def mongoService

    def index() {
        //println mongoService.collection("twitterUser")
        //mongoService.test()
        render(view: "index", model: [])
    }

    def about() {
        render(view: "about", model: [])
    }

    def team() {
        render(view: "team", model: [])
    }

    def survey() {
        render(view: "survey", model: [])
    }

    def forum() {
        render(view: "forum", model: [])
    }

    //@Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def monitoredUsers() {
        def twitterUserMonitor = mongoService.collection("twitterUserMonitor")
        def monitoredUsers = twitterUserMonitor.find()

        render(view: "monitoredUsers", model: [monitoredUsers: monitoredUsers])
    }
}
