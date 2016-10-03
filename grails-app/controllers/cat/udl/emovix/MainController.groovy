package cat.udl.emovix

import com.mongodb.util.JSON
import grails.plugin.springsecurity.annotation.Secured
import com.mongodb.DBObject

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

    def twitterSurveyLink() {
        session["twitterUser"] = params?.id
        redirect(action: "twitterSurvey")
    }

    def twitterSurvey() {
        render(view: "twitterSurvey")
    }

    def submitTwitterSurvey() {
        def ageGroup = params?.ageGroup
        def twitterUser = session["twitterUser"]

        if(ageGroup == null || twitterUser == null) {
            println "Missing age group or twitter user"
            render(view: "submitTwitterSurvey")
            return
        }

        def twitterUserAgeGroup = mongoService.collection("twitterUserAgeGroup")

        com.mongodb.DBObject newEntry = (DBObject) JSON
                .parse("{'username':'" + twitterUser + "', 'ageGroup':"+ ageGroup + "}")

        try {
            twitterUserAgeGroup.insert(newEntry)
        }
        catch (com.mongodb.DuplicateKeyException e) {
            println "Duplicate attempt"
        }
    }
}
