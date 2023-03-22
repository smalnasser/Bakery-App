//
//  ViewController.swift
//  Bakery App
//
//  Created by sarah alnasser on 23/08/1444 AH.
//

import UIKit

//sarah second- third

class BakePageController: UIViewController {
    
    let searchcontroller = UISearchController()
    @IBOutlet weak var tableView: UITableView!
    
   // @IBOutlet weak var search: UISearchBar!
    // @IBOutlet weak var upcoming: UITableView!
    
    // tableView.register(BakePageTableViewCell.self, forCellReuseIdentifier: "cellid")
    /* let id: Int
     let course_creator_id : Int
     let title : String
     let description: String
     let level: String
     // let image : String
     let start_date : Date
     let end_date : Date
     let location_name :String
     let location_latitude : Int
     let location_longitude : Int*/
   // var im :UIImage
    
 
    let Courses : [Course] = [
        Course(id: 1, course_creator_id: 1, title: "Babka dough", description: "Babka dough", level: "Intermediate",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image:"pic1") ,
        Course(id: 1, course_creator_id: 1, title: "Cinnamon rolls", description: "Cinnamon rolls", level: "Beginner",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic2"),
     Course(id: 1, course_creator_id: 1, title: "Japanese bread", description: "Japanese bread", level: "Advanced",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic3"),
        Course(id: 1, course_creator_id: 1, title: "Banana bread", description: "Banana bread", level: "Intermediate",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic4"),
        Course(id: 1, course_creator_id: 1, title: "Babka dough", description: "Babka dough", level: "Intermediate",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image:"pic1"),
        Course(id: 1, course_creator_id: 1, title: "Babka dough", description: "Babka dough", level: "Intermediate",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image:"pic1"),
        Course(id: 1, course_creator_id: 1, title: "Cinnamon rolls", description: "Cinnamon rolls", level: "Beginner",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic2"),
        Course(id: 1, course_creator_id: 1, title: "Japanese bread", description: "Japanese bread", level: "Advanced",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic3"),
        Course(id: 1, course_creator_id: 1, title: "Banana bread", description: "Banana bread", level: "Intermediate",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic4"),
        Course(id: 1, course_creator_id: 1, title: "Babka dough", description: "Babka dough", level: "Intermediate",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image:"pic1"),
        Course(id: 1, course_creator_id: 1, title: "Cinnamon rolls", description: "Cinnamon rolls", level: "Beginner",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic2"),
        Course(id: 1, course_creator_id: 1, title: "Japanese bread", description: "Japanese bread", level: "Advanced",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic3"),
        Course(id: 1, course_creator_id: 1, title: "Banana bread", description: "Banana bread", level: "Intermediate",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic4"),
        Course(id: 1, course_creator_id: 1, title: "Babka dough", description: "Babka dough", level: "Intermediate",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image:"pic1"),
        Course(id: 1, course_creator_id: 1, title: "Cinnamon rolls", description: "Cinnamon rolls", level: "Beginner",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic2"),
        Course(id: 1, course_creator_id: 1, title: "Japanese bread", description: "Japanese bread", level: "Advanced",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic3"),
        Course(id: 1, course_creator_id: 1, title: "Banana bread", description: "Banana bread", level: "Intermediate",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic4")
       ]
   
    
    /*
     let Courses : [Course] = [
     Course(id: 1, course_creator_id: 1, title: "Babka dough", description: "Babka dough", level: "Intermediate",start_date: DateFormatter().date(from:"19/02/2023")!, end_date:DateFormatter().date(from:"19/02/2023")!, location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic1"), Course(id: 1, course_creator_id: 1, title: "Cinnamon rolls", description: "Cinnamon rolls", level: "Beginner",start_date: DateFormatter().date(from:"19/02/2023")!, end_date:DateFormatter().date(from:"19/02/2023")!, location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic2"), Course(id: 1, course_creator_id: 1, title: "Japanese bread", description: "Japanese bread", level: "Advanced",start_date: DateFormatter().date(from:"19/02/2023")!, end_date:DateFormatter().date(from:"19/02/2023")!, location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic3"), Course(id: 1, course_creator_id: 1, title: "Banana bread", description: "Banana bread", level: "Advanced",start_date: DateFormatter().date(from:"19/02/2023")!, end_date:DateFormatter().date(from:"19/02/2023")!, location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic4")
     ]
     */
    
    
    
    //    @IBOutlet weak var BakePageTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        title = "Search"
        navigationItem.searchController = searchcontroller
        // Do any additional setup after loading the view.
        //tableView.separatorColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        tableView.separatorColor = UIColor (white: 0.95, alpha: 1)
       // tabBar.backgroundColor = UIColor(hexString: "323B61")
//        tableView.register(BakePageTableViewCell.self, forCellReuseIdentifier: "cellid")
        
    }
    
    
}

extension BakePageController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Courses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid1", for: indexPath) as! BakePageTableViewCell
//        DispatchQueue.global().async {
//            [weak self] in
//            if let data = try? Data(contentsOf: URL(string:Courses[indexPath.row].image)!){
//                if let image = UIImage(data: data){
//                    DispatchQueue.main.async {
//                       // self?.
//                      //  self?.tableView.cellForRow(at: indexPath)?.coursePic.image = image
//                        self!.im = image
//                    }
//                }
//            } }
//        cell.coursePic.image = im
        cell.coursePic.image = UIImage(named: Courses[indexPath.row].image)
        cell.courseName.text = Courses[indexPath.row].title
        cell.courseLevel.text = Courses[indexPath.row].level
        //        cell.courseDatePic.image = UIImage(named:"clock")
        cell.courseDuration.text = "2H"
        //        cell.courseDurationPic.image = UIImage(named: "calender")
        cell.courseDate.text = " 14 Feb - 4:00"
        //cell.courseDate.text = DateFormatter().string(from: Courses [indexPath.row].start_date)
        
        
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        105
    }
    func tableView(_ tableView: UITableView, widthForRowAt indexPath: IndexPath) -> CGFloat {
        390
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "showDetails1", sender: AnyObject.self)
        print("this row \(indexPath.row) is selected")
        
    }
    
//    func upcoming(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        1
//    }
//
//    func upcoming(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell2 = upcoming.dequeueReusableCell(withIdentifier: "upcoming", for: indexPath) as! UpcomingCell
//
//        cell2.Month.text = " Dec"
//        return cell2
//    }
    
  /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails1"
        {
            var nextScene = segue.destination as! DetailsPageController
            // Pass the selected object to the new view controller.
            
            if let indexPath = self.tableView.indexPathForSelectedRow {
                       let selectedCourse = Courses[indexPath.row]
                nextScene.currentCourse = selectedCourse
                   }
        }
    }
  */
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "mySegue" {
//        var nextScene =  segue.destinationViewController as! VehicleDetailsTableViewController
//
//        // Pass the selected object to the new view controller.
//        if let indexPath = self.tableView.indexPathForSelectedRow {
//            let selectedVehicle = vehicles[indexPath.row]
//            nextScene.currentVehicle = selectedVehicle
//        }
//      }
//    }
    
}

//extension BakePageController:UISearchBarDelegate{
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        <#code#>
//    }
//    }

