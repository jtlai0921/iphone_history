//
//  DetailCityViewController.swift
//  SandBox0904
//
//  Created by Robert on 2019/9/20.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit
import MapKit

class DetailCityViewController: UITableViewController {
    var city:City!;
    @IBOutlet var continentLabel:UILabel!;
    @IBOutlet var countryLabel:UILabel!;
    @IBOutlet var cityImageView:UIImageView!;
    @IBOutlet var cityTextView:UITextView!;
    @IBOutlet var urlLabel:UILabel!;
    @IBOutlet var cityMap:MKMapView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = city.cityName;
        continentLabel.text = city.continent;
        countryLabel.text = city.country;
        cityImageView.image = UIImage(named: city.image)
        cityTextView.text = city.local;
        urlLabel.text = city.url;
        let location = CLLocationCoordinate2DMake(city.lat, city.long)
        cityMap.setCenter(location, animated: false)
        let region = MKCoordinateRegion(center: location, latitudinalMeters: 1000, longitudinalMeters: 1000)
        cityMap.setRegion(region, animated: false);
        //let annotation = MKPointAnnotation();
        //annotation.title = city.cityName;
        //annotation.subtitle = city.country;
        //cityMap.showAnnotations([annotation], animated: false);
        //cityMap.selectAnnotation(annotation, animated: false);
    }
    
    @IBAction func touchMap(_ sender:UITapGestureRecognizer){
        performSegue(withIdentifier: "goBigMap", sender: city)
    }
    
    @IBAction func back(_ sender:UIStoryboardSegue){
        
    }
    
    
    

}
