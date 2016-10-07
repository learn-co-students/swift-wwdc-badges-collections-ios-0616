//  AppDelegate.swift

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var sand = SandBox()
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        sand.badgeForSpeaker("Anita Borg")
                
        sand.badgesForSpeakers(["Anita Borg", "Alan Kay", "Ada Lovelace", "Aaron Swartz", "Alan Turing", "Michael Faraday", "Grace Hopper"])
        
        sand.roomAssignmentsForSpeakers(["Anita Borg", "Alan Kay", "Ada Lovelace", "Aaron Swartz", "Alan Turing", "Michael Faraday", "Grace Hopper"])
        
        sand.roomAssignmentsForSpeakers(["Anita Borg", "Alan Kay", "Ada Lovelace", "Aaron Swartz", "Alan Turing", "Michael Faraday", "Grace Hopper"])
        
        
        return true
    }
}

