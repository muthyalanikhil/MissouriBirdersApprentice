//
//  BirdViewController.swift
//  MissouriBirdersApp
//
//  Created by Muthyala,Nikhil on 10/16/17.
//  Copyright © 2017 Muthyala,Nikhil. All rights reserved.
//

import UIKit

class BirdViewController: UIViewController {
    
    var bird:Bird!
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var numberOfSightingsTF: UITextField!
    @IBOutlet weak var birdImageView: UIImageView!
    
    @IBAction func updateSightings(_ sender: Any) {
        var count = Int(numberOfSightingsTF.text!)!
        if  count != nil {
            numberOfSightingsTF.text = "\(count+1)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = bird.name
        let latitude = Double((bird.location?.latitude)!)
        let longitude = Double((bird.location?.longitude)!)
        locationLabel.text = "\(latitude), \(longitude)"
        dateLabel.text = "\(bird.dateSighted!)"
        numberOfSightingsTF.text = String(describing: bird.numberOfSightings!)
        let birdName:String = "\(bird.name!).jpg)"
        let birdImage:UIImage = UIImage(named: birdName)!
        birdImageView.image = birdImage
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
