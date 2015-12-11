package cat.udl.emovix.twitter

import com.mongodb.BasicDBObject
import com.mongodb.DBObject
import com.mongodb.DBCursor
import cat.udl.emovix.MongoService
import grails.converters.JSON

class TwitterStatusController {
    def mongoService

    def index() {
      render "hola"
    }

    def findByCoordinates() {
      def longitude = params?.longitude
      def latitude = params?.latitude
      def maxDistance = params?.maxDistance
      def operation = params?.operation

      longitude = 2.1639d
      latitude = 41.389d
      maxDistance = 10000d
      operation = "near"
      if(operation.equals("near")) {
        def twitterStatus = mongoService.collection("twitterStatus")

        DBObject query = new BasicDBObject("coordinates",
            new BasicDBObject('$near',
                    new BasicDBObject('$geometry', new BasicDBObject("type", "Point")
                            .append("coordinates", [longitude, latitude]))))

        DBCursor cursor = twitterStatus.find(query)
        def results = []
        while(cursor.hasNext()) {
          BasicDBObject tweet = (BasicDBObject) cursor.next();
          def result = [:]
          result.put("id", tweet.getString("id"))
          result.put("coordinates", tweet.coordinates.coordinates)
          result.put("text", tweet.getString("text"))
          results.add result
        }

        render(view: "findByCoordinates", model: [results: results])

      }
    }
}
