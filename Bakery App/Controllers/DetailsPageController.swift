//
//  DetailsPageController.swift
//  Bakery App
//
//  Created by sarah alnasser on 24/08/1444 AH.
//




import UIKit
import MapKit

class ViewController: UIViewController {
    

    
    
    var currentCourse: Course = Course(id: 1, course_creator_id: 1, title: "Babka dough", description: "Needless to say, you will learn new techniques,new ingredients, and new recipes when taking a baking class. Not only that, but baking also involves creating food presentations and plating.", level: "Intermediate",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic1")


    
   
    @IBOutlet var mapView: MKMapView!
    @IBOutlet var bookbtn: UIButton!
    @IBOutlet var Des: UILabel!
    @IBOutlet var levellbl: UILabel!
    @IBOutlet var imageView: UIImageView!
  
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        levellbl.layer.cornerRadius = levellbl.frame.height/2
       
       
       // Des.text = currentCourse.description
        levellbl.text = currentCourse.level
        imageView.image =  UIImage(named:currentCourse.image)



        levellbl.layer.masksToBounds = true
        levellbl.backgroundColor = UIColor(named: "lightbrown")


        let annontation = MKPointAnnotation()
        annontation.coordinate = CLLocationCoordinate2D(latitude:  24.8467, longitude: 46.7255)
        mapView.addAnnotation(annontation)


        let region = MKCoordinateRegion(center: annontation.coordinate, latitudinalMeters: 450, longitudinalMeters: 450)
        mapView.setRegion(region, animated: true)

        
      
    }
}
