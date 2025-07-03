//
//  ViewController.swift
//  Map
//
//  Created by dany on 01.07.2025.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    var myMap = MKMapView()
    var myLocationMamadger = CLLocationManager()
    var myButtonPlus = UIButton()
    var myButtonMines = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        createdMap(myMap)
        createdLocation(myLocationMamadger)
        createdButtonPlus(myButtonPlus)
        createdButtonMines(myButtonMines)
    }
    func createdMap(_ map: MKMapView) {
        map.frame = UIScreen.main.bounds
        map.delegate = self
        map.mapType = .standard
        map.showsUserLocation = true
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 54.73, longitude: 55.97), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        map.setRegion(region, animated: true)
        self.view.addSubview(map)
    }
    
    func createdLocation(_ location: CLLocationManager) {
        location.requestAlwaysAuthorization()
        
    }
    
    func createdButtonPlus(_ button: UIButton) {
        button.frame = CGRect(x: 10, y: 360, width: 50, height: 50)
        button.backgroundColor = .systemBlue
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 34)
        button.titleLabel?.textAlignment = .center
        button.layer.cornerRadius = 25
        button.alpha = 0.5
        button.addTarget(self, action: #selector(tapButtonPlus), for: .touchUpInside)
        view.addSubview(button)
    }
    
    func createdButtonMines(_ button: UIButton) {
        button.frame = CGRect(x: 10, y: 430, width: 50, height: 50)
        button.backgroundColor = .systemBlue
        button.setTitle("-", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 34)
        button.titleLabel?.textAlignment = .center
        button.layer.cornerRadius = 25
        button.alpha = 0.5
        button.addTarget(self, action: #selector(tapButtonMines), for: .touchUpInside)
        view.addSubview(button)
    }
    //MARK: - Selectors
    @objc func tapButtonPlus() {
        var region = myMap.region
        region.span.latitudeDelta /= 2
        region.span.longitudeDelta /= 2
        myMap.setRegion(region, animated: true)
    }
    @objc func tapButtonMines() {
        var region = myMap.region
        region.span.latitudeDelta *= 2
        region.span.longitudeDelta *= 2
        myMap.setRegion(region, animated: true)
    }
}


//MARK: - Extensions
extension ViewController: MKMapViewDelegate {
    
}
