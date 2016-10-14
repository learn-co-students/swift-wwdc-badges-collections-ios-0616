//  Sandbox.swift

import Foundation

class SandBox {
    var speakersRoomsTable: [String:Int] = ["Anita Borg":201,
                                            "Alan Kay":202,
                                            "Ada Lovelace":203,
                                            "Aaron Swartz":215,
                                            "Alan Turing":204,
                                            "Michael Faraday":205,
                                            "Grace Hopper":230
    ] // it's optional because IT DEPENS ON EXISTANCE OF THE KEY
    var roomCapacitiesTable: [Int:Int] = [201:40, 202:50, 203:70, 215:30, 230:80, 240:35, 260:60]
    
    
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
            let room = speakersRoomsTable[person]
            if let roomNumber = room {
                print("\(person) will be speaking in Room \(roomNumber).")
            } else {
                print("\(person) has not been assigned to a room.")
            }
        }
        return roomAssignments
    }
    
    func getRoomCapacitiesForAllSpeakers() -> [String:Int] {
        var roomCapacitiesForSpeakers = [String:Int]()
        
        for (speaker,room) in speakersRoomsTable {
            if let capacity = roomCapacitiesTable[room] {
                roomCapacitiesForSpeakers[speaker] = capacity
            }
        }
        print(roomCapacitiesForSpeakers)
        return roomCapacitiesForSpeakers
    }
    
    func audienceSizesForSpeakers(speakers:[String]) -> [String] {
        let roomCapacities = getRoomCapacitiesForAllSpeakers()
        
        var audienceSize = [String]()
        for eachSpeaker in speakers {
            if let capacity = roomCapacities[eachSpeaker] {
                let message = "\(eachSpeaker) can speak to up to \(capacity) people."
                audienceSize.append(message)
            } else {
                let errorMessage = "Room information not found for \(eachSpeaker)."
                audienceSize.append(errorMessage)
            }
        }
        print(audienceSize)
        return audienceSize
    }
}


