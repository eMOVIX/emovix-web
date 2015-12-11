package cat.udl.emovix.twitter

import com.mongodb.BasicDBObject
import com.mongodb.DBObject
import grails.plugin.springsecurity.annotation.Secured
import cat.udl.emovix.MongoService
import grails.converters.JSON

class TwitterUserMonitorController {
    def mongoService

    //@Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def index() {
      def twitterUserMonitor = mongoService.collection("twitterUserMonitor")
      def monitoredUsers = twitterUserMonitor.find()

      render(view: "index", model: [monitoredUsers: monitoredUsers])
    }

    //@Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def snapshots() {
      def screen_name = params.id

      if(!screen_name) {
        redirect(action: "index")
      }

      BasicDBObject filter = new BasicDBObject("screen_name", screen_name)
      def snapshots = mongoService.collection("twitterUserSnapshot").find(filter)

      def chart_dates = []
      def chart_statuses_count = []
      def chart_followers_count = []
      def chart_friends_count = []

      def snaps = []

      for(def snapshot in snapshots) {
        chart_dates.add g.formatDate(date: new Date( ((long)snapshot._id.getTimestamp()) * 1000), format: 'yyyy-MM-dd')
        chart_statuses_count.add snapshot.statuses_count
        chart_followers_count.add snapshot.followers_count
        chart_friends_count.add snapshot.friends_count

        snaps.add snapshot
      }

      render(view: "snapshots", model: [
        snapshots: snaps,
        chart_dates: chart_dates as JSON,
        chart_statuses_count: chart_statuses_count,
        chart_followers_count: chart_followers_count,
        chart_friends_count: chart_friends_count
      ])
    }
}
