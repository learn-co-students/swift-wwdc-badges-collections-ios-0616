//  AppDelegate.swift

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let sand = SandBox()

        sand.badgeForSpeaker("Anita Borg")
                
        sand.badgesForSpeakers(["Anita Borg", "Alan Kay", "Ada Lovelace", "Aaron Swartz", "Alan Turing", "Michael Faraday", "Grace Hopper"])
        
        sand.roomAssignmentsForSpeakers(["Anita Borg", "Alan Kay", "Ada Lovelace", "Aaron Swartz", "Alan Turing", "Michael Faraday", "Grace Hopper"])
        
        sand.roomAssignmentsForSpeakers(["Anita Borg", "Alan Kay", "Ada Lovelace", "Aaron Swartz", "Alan Turing", "Michael Faraday", "Grace Hopper", "Madina"])
        sand.getRoomCapacitiesForAllSpeakers()
        sand.audienceSizesForSpeakers(["Anita Borg", "Alan Kay", "Ada Lovelace", "Aaron Swartz", "Alan Turing", "Michael Faraday", "Grace Hopper", "Madina"])
        
        return true
    }
}

