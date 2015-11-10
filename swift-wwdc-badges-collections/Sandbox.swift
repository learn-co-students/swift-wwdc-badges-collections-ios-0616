//  Sandbox.swift

import Foundation

/**

* Write your code here!

*/

// I. Badges

func badgeForSpeaker(speaker: String) -> String {
    return "Hello, my name is \(speaker)."
}

func badgesForSpeakers(speakers: [String]) -> [String] {
    var badges = [String]()
    
    for speaker in speakers {
        let badge = badgeForSpeaker(speaker)
        badges.append(badge)
    }
    
    return badges
}

// II. Room Assignments

let roomsForSpeakers: [String: Int] = [
    "Anita Borg": 201,
    "Alan Kay": 202,
    "Ada Lovelace": 203,
    "Aaron Swartz": 215,
    "Alan Turing": 204,
    "Michael Faraday": 205,
    "Grace Hopper": 230,
]

func roomAssignmentsForSpeakers(speakers: [String]) -> [String] {
    var roomAssignments = [String]()
    
    for speaker in speakers {
        if let room = roomsForSpeakers[speaker] {
            let roomAssignment = "\(speaker) will be speaking in Room \(room)."
            roomAssignments.append(roomAssignment)
        } else {
            let unassigned = "\(speaker) has not been assigned to a room."
            roomAssignments.append(unassigned)
        }
    }
    
    return roomAssignments
}

// III. Audience Capacities

let capacitiesForRooms: [Int: Int] = [
    201: 40,
    202: 50,
    203: 70,
    215: 30,
    204: 20,
    230: 80,
    240: 35,
    260: 60
]

func getCapacitiesForSpeakers() -> [String: Int] {
    var capacitiesForSpeakers = [String: Int]()
    
    for (speaker, room) in roomsForSpeakers {
        if let capacity = capacitiesForRooms[room] {
            capacitiesForSpeakers[speaker] = capacity
        }
    }
    
    return capacitiesForSpeakers
}

func audienceSizesForSpeakers(speakers: [String]) -> [String] {
    let capacities = getCapacitiesForSpeakers()
    
    var audienceSizes = [String]()
    
    for speaker in speakers {
        if let capacity = capacities[speaker] {
            audienceSizes.append("\(speaker) can speak to up to \(capacity) people.")
        } else {
            audienceSizes.append("Room information not found for \(speaker).")
        }
    }
    
    return audienceSizes
}


