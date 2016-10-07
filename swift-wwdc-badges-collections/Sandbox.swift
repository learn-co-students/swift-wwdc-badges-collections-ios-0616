//  Sandbox.swift

import Foundation

class SandBox{
    var speakersRoomsTable: [String:Int]? = ["Anita Borg":201,
                                             "Alan Kay":202,
                                             "Ada Lovelace":203,
                                             "Aaron Swartz":215,
                                             "Alan Turing":204,
                                             "Michael Faraday":205,
                                             "Grace Hopper":230,
                                             "" : 245]
    
    
    func badgeForSpeaker(name: String) -> String {
        
        return "Hello, my name is \(name)"
    }
    
    func badgesForSpeakers(speakers: [String])-> [String] {
        
        var badgesArray = [String] ()
        for name in speakers {
            let message = "Hello, my name is \(name)"
            badgesArray.append(message)
        }
        return badgesArray
    }
    
    func roomAssignmentsForSpeakers(speaker:[String])-> [String]{
        
        let roomAssignments = [String]()
        
        for person in speaker
        {
            let room = speakersRoomsTable![person]
    
                if let roomNumber = room {
                print("\(person) will be speaking in Room \(roomNumber).")
                } else {
                print("\(person) has not been assigned to a room.")
            }
        }
        return roomAssignments
    }
}


