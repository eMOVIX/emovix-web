package cat.udl.emovix

import grails.transaction.Transactional
//import org.bson.Document;
import com.mongodb.*

@Transactional
class MongoService {

    private static MongoClient mongoClient
    private static host = "192.168.101.12"    //your host name
    private static port = 27017      //your port no.
    private static databaseName = "emovix"

    public static MongoClient client() {
        if(mongoClient == null){
            return new MongoClient(host,port)
        }else {
            return mongoClient
        }
    }

    public DBCollection collection(collectionName) {
        DB db = client().getDB(databaseName)
        return db.getCollection(collectionName)
    }

    def addMonitoredUser(userName) {
        DB db = client().getDB(databaseName)
        BasicDBObject doc = new BasicDBObject("screen_name", userName).
            append("enabled", true)
        db.getCollection("twitterUserMonitor").insert(doc)
    }

    def test() {
      DB db = client().getDB(databaseName)
      println db.getCollection("twitterStatus").count()
    }
}
