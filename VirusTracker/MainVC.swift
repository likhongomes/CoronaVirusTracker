//
//  MainVC.swift
//  VirusTracker
//
//  Created by Likhon Gomes on 3/6/20.
//  Copyright © 2020 Likhon Gomes. All rights reserved.
//

import UIKit
import CoreLocation

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        createBeaconRegion()
    }
    
    func createBeaconRegion() -> CLBeaconRegion? {
        let proximityUUID = UUID(uuidString:
                    "39ED98FF-2900-441A-802F-9C398FC199D2")
        let major : CLBeaconMajorValue = 100
        let minor : CLBeaconMinorValue = 1
        let beaconID = "com.example.myDeviceRegion"
            
        return CLBeaconRegion(proximityUUID: proximityUUID!,
                    major: major, minor: minor, identifier: beaconID)
    }
    

}
