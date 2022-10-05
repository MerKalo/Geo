//
//  GoogleMapsView.swift
//  GeoGuessrGameProg
//
//  Created by Vadim Круэл@ on 05.10.2022.
//

import UIKit

class GoogleMapsView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let camera = GMSCameraPosition(latitude: 1.285, longitude: 103.848, zoom: 12)
            let mapView = GMSMapView(frame: .zero, camera: camera)
            self.view = mapView
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
      let panoView = GMSPanoramaView(frame: .zero)
      self.view = panoView

      panoView.moveNearCoordinate(CLLocationCoordinate2D(latitude: -33.732, longitude: 150.312))
    }
    
}
