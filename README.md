# Farm Guide App

This is an app, which uses Xcode and Swift. So far, this app has only been tested and compiled on XCode 10.1. Other versions of XCode have not been tested out yet and newer versions of XCode will most likely be incompatible.

This app allows guests to learn more about the farm at the Rathmore Cottage in Tasmania. I have implemented log in and sign up capabilities using Firebase. I wanted to implement maps in the app. I first started with Google Maps SDK, which shows the location of the Rathmore Cottage. I also wanted to implement directions to a specific spot in the app, so I used MapKit, so users can get directions. I am currently implementing the UITableViewController in XCode, where I will save the user's inputs into the Firebase Database. This UITableViewController will allow users to input notes about what they want to do at the Rathmore Cottage. Currently, the app has a Scroll Text View for the notes, which will be replaced by the UITableViewController.

This idea was created when I visited Tasmania over winter break in 2018 with my family and we stayed at Rathmore Cottage. The host told my family that she wanted to have an app that allowed guests to experience a tour of different parts of the farm. I started working on this app when I attended the CruzHacks 2019 Hackathon.

**Demo Files:**

storyboard-screenshots: folder for XCode app storyboard screenshots

Farm_Tour_App_Demo.mov: Demo of the app on an iPhone XR through the XCode simulator on the computer





**Code Files:**

Farm-Guide-App/Farm-Guide-App-master/TourAppPush/TourApp.xcworkspace/: launch this to start the XCode app project

Farm-Guide-App/Farm-Guide-App-master/TourAppPush/Pods/: folder that contains Firebase and Google Maps plug-ins 

Farm-Guide-App/Farm-Guide-App-master/TourAppPush/TourApp/: folder that contains swift code 

Farm-Guide-App/Farm-Guide-App-master/TourAppPush/TourApp/Assets.xcassets/: folder contains images used in project 

Farm-Guide-App/Farm-Guide-App-master/TourAppPush/TourApp/Base.lproj/: contains storyboard 


