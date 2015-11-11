package cat.udl.emovix.twitter

import com.mongodb.BasicDBObject
import com.mongodb.DBObject
import grails.plugin.springsecurity.annotation.Secured
import cat.udl.emovix.MongoService

class TwitterUserMonitorController {
    def mongoService

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def index() {
      def twitterUserMonitor = mongoService.collection("twitterUserMonitor")
      def monitoredUsers = twitterUserMonitor.find()

      render(view: "index", model: [monitoredUsers: monitoredUsers])
    }

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def snapshots() {
      def screen_name = params.id

      if(!screen_name) {
        redirect(action: "index")
      }

      BasicDBObject filter = new BasicDBObject("screen_name", screen_name)
      def snapshots = mongoService.collection("twitterUserSnapshot").find(filter)
      render(view: "snapshots", model: [snapshots: snapshots])
    }
}
