//  SandboxSpec.swift

import Quick
import Nimble
@testable import swift_wwdc_badges_collections

class SandboxSpec: QuickSpec {
    override func spec() {
        describe("Sandbox") {
            
            var speakers = [String]()
            
            beforeEach() {
                speakers = [
                    "Anita Borg",
                    "Alan Kay",
                    "Ada Lovelace",
                    "Aaron Swartz",
                    "Alan Turing",
                    "Michael Faraday",
                    "Grace Hopper",
                    "Charles Babbage"
                ]
                
            }
            
            describe("badgeForSpeaker(_:)") {
                it("should return a 'hello' message for Anita Borg") {
                    let expected = "Hello, my name is Anita Borg."
                    
                    expect(badgeForSpeaker("Anita Borg")).to(match(expected))
                }
                
                it("should return a 'hello' message for Alan Turing") {
                    let expected = "Hello, my name is Alan Turing."
                    
                    expect(badgeForSpeaker("Alan Turing")).to(match(expected))
                }
                
                it("should return a 'hello' message for Inigo Montoya") {
                    let expected = "Hello, my name is Inigo Montoya."
                    
                    expect(badgeForSpeaker("Inigo Montoya")).to(match(expected))
                }
            }
            
            describe("badgesForSpeakers(_:)") {
                it("should return an empty array for an empty array") {
                    expect(badgesForSpeakers([])).to(beEmpty())
                }
                
                it("should return an array with a 'hello' message for Inigo Montoya") {
                    let expected = ["Hello, my name is Inigo Montoya."]
                    
                    expect(badgesForSpeakers(["Inigo Montoya"])).to(equal(expected))
                }

                it("should return an array of 'hello' messages with each speaker's name") {
                    let expected = [
                    "Hello, my name is Anita Borg.",
                    "Hello, my name is Alan Kay.",
                    "Hello, my name is Ada Lovelace.",
                    "Hello, my name is Aaron Swartz.",
                    "Hello, my name is Alan Turing.",
                    "Hello, my name is Michael Faraday.",
                    "Hello, my name is Grace Hopper.",
                    "Hello, my name is Charles Babbage."
                    ]
                    
                    expect(badgesForSpeakers(speakers)).to(equal(expected))
                }
            }

            describe("roomAssignmentsForSpeakers(_:)") {
                it("should return an empty array for an empty array") {
                    expect(roomAssignmentsForSpeakers([])).to(beEmpty())
                }
                
                it("should return an array with a room assignment for Anita Borg") {
                    let expected = ["Anita Borg will be speaking in Room 201."]
                    let result = roomAssignmentsForSpeakers(["Anita Borg"])
                    
                    expect(result).to(equal(expected))
                }
                
                it("should return an array with room assignments for all the speakers, with a failure message for Charles Babbage") {
                    let expected = [
                        "Anita Borg will be speaking in Room 201.",
                        "Alan Kay will be speaking in Room 202.",
                        "Ada Lovelace will be speaking in Room 203.",
                        "Aaron Swartz will be speaking in Room 215.",
                        "Alan Turing will be speaking in Room 204.",
                        "Michael Faraday will be speaking in Room 205.",
                        "Grace Hopper will be speaking in Room 230.",
                        "Charles Babbage has not been assigned to a room."
                    ]
                    let result = roomAssignmentsForSpeakers(speakers)
                    
                    expect(result).to(equal(expected))
                }
            }

            describe("getCapacitiesForSpeakers()") {
                it("should return a dictionary containing the capacities for speakers with valid room assignments") {
                    let result = getCapacitiesForSpeakers()
                    
                    expect(result["Anita Borg"]).to(equal(40))
                    expect(result["Michael Faraday"]).to(equal(20))
                    expect(result["Alan Kay"]).to(equal(50))
                    expect(result["Aaron Swartz"]).to(equal(30))
                    expect(result["Aaron Swartz"]).to(equal(30))
                    expect(result["Aaron Swartz"]).to(equal(30))
                }
            }
        }
    }
}
