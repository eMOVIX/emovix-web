package cat.udl.emovix

class MainController {
    def mongoService

    def index() {
      println mongoService.collection("twitterUser")
      mongoService.test()
      render(view: "index", model: [])
    }

    def about() {
      render(view: "about", model: [])
    }

    def team() {
      render(view: "team", model: [])
    }

    def monitoredUsers() {
      def twitterUserMonitor = mongoService.collection("twitterUserMonitor")
      def monitoredUsers = twitterUserMonitor.find()

      render(view: "monitoredUsers", model: [monitoredUsers: monitoredUsers])
    }
}
