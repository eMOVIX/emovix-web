package cat.udl.emovix

class MainController {

    def index() {
      render(view: "index", model: [])
    }

    def about() {
      render(view: "about", model: [])
    }

    def team() {
      render(view: "team", model: [])
    }
}
