# Swift — WWDC Badges Collections

## Objectives

1. Write functions that accept and return collections.
2. Use arrays and dictionaries in loops.
3. Unwrap the optionals returned from accessed a collection.
4. Combine data held across multiple collections to get a meaningful result.

## Introduction

You're helping out at Apple's [Worldwide Developers Conference](https://developer.apple.com/wwdc/) this year. Your task is to print various pieces of information regarding each of the eight speakers at the conference. However, you must not assume that the event information that you have been provided is correct or complete. **There are mistakes in the data that you will need to handle with optionals.**

## Instructions

Open the `swift-wwdc-badges-collection.xcworkspace` and navigate to the `Sandbox.swift` file.

Run the tests with `⌘` `U` as you progress through the exercises. If you wish to manually run your functions using `⌘` `R`, call them from the AppDelegate providing them with your own sample data.

### I. Badges

1. Write a function named `badgeForSpeaker(_:)` that takes a string argument of a speaker's name and returns a string containing a greeting for that speaker's badge. It should be in the format of:  
  `Hello, my name is <name>.`

2. Write a second function named `badgesForSpeakers(_:)` that takes one argument, an array of strings containing the names of all of the speakers, and return an array of strings containing greetings for the speakers' badges in the same format as the `badgeForSpeaker(_:)` function above.

### II. Room Assignments

Each of the speakers will be talking simultaneously in different rooms, so the production manager has given you a table of which room each speaker will be in:

Speaker         | Room
----------------|-----
Anita Borg      | 201
Alan Kay        | 202
Ada Lovelace    | 203
Aaron Swartz    | 215
Alan Turing     | 204
Michael Faraday | 205
Grace Hopper    | 230  
**Hint:** *A speaker's name is missing from this list. You'll need to handle this case in your code.*

1. Create a dictionary instance in `Sandbox.swift` to hold this information in your code. The names should be keys and the values should be the room numbers.

2. Write a function named `roomAssignmentsForSpeakers(_:)` which takes one argument, an array of strings, and returns an array of strings. For each of the eight speakers who will be at the conference, use the dictionary you just made to create a string message describing which room they'll be speaking in. The string should follow the format:  
  `<speaker> will be speaking in Room <number>.`

3. Use optional unwrapping to handle the case of the speaker who has not been provided with a room assignment. Include a message in the returned array that you can bring to your production manager which reads:  
  `<speaker> has not been assigned to a room.`  
  *We've got to get that room assignment sorted out before show time.*
 
### III. Audience Capacities

Your production manager has also asked for a summary of the maximum size of each speakers' audience, based upon the size of the room that they'll be speaking in. The facilities information you were able to find is below:

Room | Capacity
-----|---------
201  | 40 people
202  | 50 people
203  | 70 people
204  | 20 people
215  | 30 people
230  | 80 people
240  | 35 people
260  | 60 people
**Hint:** *You may have noticed that one of the assigned rooms does not actually exist. You will need to handle this case in one of the functions.*

1. Create a dictionary instance in `Sandbox.swift` to hold this information in your code. The rooms should be integer keys and the capacities should be integer values.

2. Write a function named `getRoomCapacitiesForAllSpeakers()` which takes no arguments and returns a dictionary with string keys and integer values. Use the two dictionaries you've created to find the room capacity for each speaker. Save this information in a new dictionary with each speaker's name as the key, and the audience size as the value. Return this dictionary at the end of the method. **Determine this information programmatically, do not manually read between the two tables.**

3. Write another function named `audienceSizesForSpeakers(_:)` which takes one argument, an array of strings, and returns an array of strings. Use the `getRoomCapacitiesForAllSpeakers()` function that you just wrote to get the audience size information for each speaker. Return an array containing a string message for each speaker that reads:
  `<speaker> can speak to up to <capacity> people.`  
  However, there are two speakers with problematic room assignments: one without a room assignment at all, and one with an invalid room assignment. Rely on optionals to detect these speakers and generate messages for them that you can give to your production manager that read:  
  `Room information not found for <speaker>.`  
  *Now hurry, the doors open in 15 minutes!*


<p data-visibility='hidden'><a href='https://learn.co/lessons/swift-wwdc-badges-collections' title='Swift WWDC badges Collections'>Swift WWDC badges Collections</a> on Learn.co and start learning to code for free.</p>
