package cat.udl.emovix.twitter

import com.mongodb.BasicDBObject
import com.mongodb.DBCursor
import com.mongodb.DBObject
import com.mongodb.DuplicateKeyException
import grails.converters.*


class YouthPredictorController {
    def mongoService

    def index() {
        /*
        def collection = mongoService.collection("twitterUserAgeGroup")
        DBCursor cursor =  collection.find()

        def ageGroup1 = []
        def ageGroup2 = []
        def ageGroup3 = []
        def ageGroup4 = []

        try{
            while(cursor.hasNext()){
                def doc = cursor.next()

                if(doc['following'] == null) continue

                if(doc['ageGroup'] == 1) {
                    ageGroup1.addAll(doc['following'])
                }
                else if(doc['ageGroup'] == 2) {
                    ageGroup2.addAll(doc['following'])
                }
                else if(doc['ageGroup'] == 3) {
                    ageGroup3.addAll(doc['following'])
                }
                else if(doc['ageGroup'] == 4) {
                    ageGroup4.addAll(doc['following'])
                }
                //println doc     //will print raw data if its in your database for that collection
            }

        }finally {
            cursor.close()
        }

        [ageGroup1: ageGroup1, ageGroup2: ageGroup2, ageGroup3: ageGroup3, ageGroup4: ageGroup4]
        */
    }

    def predict() {
        def username = params?.username

        if(!username) {
            render(view: "index", model: [error: 1])
        }

        username = username.replaceAll('@', '')

        def collection = mongoService.collection("age_group_buffer")
        try {
            collection.insert(new BasicDBObject(['username': username]))
        } catch (DuplicateKeyException e) {
            // Okay, we will just ignore it.
        }

        render(view: "predict", model: [username: username, queue: collection.count()])
    }

    def ajaxCheckPrediction() {
        def collection = mongoService.collection("age_group_predicted")

        DBCursor cursor = collection.find()

        while(cursor.hasNext()){
            def prediction = cursor.next()

            if(prediction['username'] == params?.username) {
                render prediction as JSON
                return
            }
        }
        render ''
        return
    }
}
