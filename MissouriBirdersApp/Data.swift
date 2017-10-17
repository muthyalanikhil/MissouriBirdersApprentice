//
//  DataModel.swift
//  MBA
//
//  Created by Muthyala,Nikhil on 10/16/17.
//  Copyright © 2017 Muthyala,Nikhil. All rights reserved.
//

import Foundation
import CoreLocation
import UIKit

class Bird:Equatable,CustomStringConvertible{
    
    static func ==(lhs: Bird, rhs: Bird) -> Bool {
        return true
    }
    
    var description:String{
        return ""
    }
    
    var name:String?
    var latinName:String?
    var location:CLLocationCoordinate2D?
    var dateSighted:DateComponents?
    var numberOfSightings:Int?
    var image:UIImage?
    
    func updateNumSightings(sightings:Int){
        numberOfSightings! += 1
    }
    
    init(name:String, latinName:String, location:CLLocationCoordinate2D, dateSighted:DateComponents, numberOfSightings:Int, image:UIImage){
        self.name = name
        self.latinName = latinName
        self.location = location
        self.dateSighted = dateSighted
        self.numberOfSightings = numberOfSightings
        self.image = image
    }
}

var bird1 = Bird(name: "BlueJay", latinName: "Dhoom", location: CLLocationCoordinate2D(latitude: 12.0,longitude: 41.0), dateSighted: DateComponents(year: 2012, month: 12, day:12, hour: 3, minute: 21), numberOfSightings: 20, image: #imageLiteral(resourceName: "BlueJay"))

var bird2 = Bird(name: "CarolinaChickadee", latinName: "Ishq", location: CLLocationCoordinate2D(latitude: 99.0,longitude: 29.0), dateSighted: DateComponents(year: 2013, month: 09, day:12, hour: 6, minute: 34), numberOfSightings: 22, image: #imageLiteral(resourceName: "CarolinaChickadee"))

var bird3 = Bird(name: "Eastern-Bluebird", latinName: "Ramleela", location: CLLocationCoordinate2D(latitude: 34.0,longitude: 32.0), dateSighted: DateComponents(year: 2012, month: 02, day:12, hour: 3, minute: 23), numberOfSightings: 22, image: #imageLiteral(resourceName: "Eastern-Bluebird"))

var bird4 = Bird(name: "GrayCatbird", latinName: "Dhoom", location: CLLocationCoordinate2D(latitude: 12.0,longitude: 41.0), dateSighted: DateComponents(year: 2012, month: 12, day:12, hour: 3, minute: 21), numberOfSightings: 20, image: #imageLiteral(resourceName: "GrayCatbird"))

var bird5 = Bird(name: "PurpleFinch", latinName: "Ishq", location: CLLocationCoordinate2D(latitude: 99.0,longitude: 29.0), dateSighted: DateComponents(year: 2013, month: 09, day:12, hour: 6, minute: 34), numberOfSightings: 22, image: #imageLiteral(resourceName: "PurpleFinch"))

var bird6 = Bird(name: "Red-winged-Blackbird", latinName: "Ramleela", location: CLLocationCoordinate2D(latitude: 34.0,longitude: 32.0), dateSighted: DateComponents(year: 2012, month: 02, day:12, hour: 3, minute: 23), numberOfSightings: 22, image: #imageLiteral(resourceName: "Red-winged-Blackbird"))

var bird7 = Bird(name: "Ruby-throated-Hummingbird", latinName: "Dhoom", location: CLLocationCoordinate2D(latitude: 12.0,longitude: 41.0), dateSighted: DateComponents(year: 2012, month: 12, day:12, hour: 3, minute: 21), numberOfSightings: 20, image: #imageLiteral(resourceName: "Ruby-throated-Hummingbird"))

var bird8 = Bird(name: "SongSparrow", latinName: "Ishq", location: CLLocationCoordinate2D(latitude: 99.0,longitude: 29.0), dateSighted: DateComponents(year: 2013, month: 09, day:12, hour: 6, minute: 34), numberOfSightings: 22, image: #imageLiteral(resourceName: "SongSparrow"))

var bird9 = Bird(name: "TuftedTitmouse", latinName: "Ramleela", location: CLLocationCoordinate2D(latitude: 34.0,longitude: 32.0), dateSighted: DateComponents(year: 2012, month: 02, day:12, hour: 3, minute: 23), numberOfSightings: 22, image: #imageLiteral(resourceName: "TuftedTitmouse"))

struct County{
    var name:String
    var birdArray:[Bird]
}

struct State{
    static var counties:[County] = [County(name: "Nodaway", birdArray: [bird1,bird2,bird3]), County(name: "Worth", birdArray: [bird4,bird5,bird6]), County(name: "Holt", birdArray: [bird7,bird8,bird9])]
}
