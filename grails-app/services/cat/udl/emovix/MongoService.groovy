package cat.udl.emovix

import grails.transaction.Transactional
import com.mongodb.*

@Transactional
class MongoService {

    private static MongoClient mongoClient
    private static host = "localhost"    //your host name
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

    def test() {
      DB db = client().getDB(databaseName)
      println db.getCollection("twitterStatus").count()
    }
}
