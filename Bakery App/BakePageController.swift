//
//  ViewController.swift
//  Bakery App
//
//  Created by sarah alnasser on 23/08/1444 AH.
//
 // eman 
import UIKit

class BakePageController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
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
    let Courses : [Course] = [
        Course(id: 1, course_creator_id: 1, title: "Babka dough", description: "Babka dough", level: "Intermediate",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic1"), Course(id: 1, course_creator_id: 1, title: "Cinnamon rolls", description: "Cinnamon rolls", level: "Beginner",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic2"), Course(id: 1, course_creator_id: 1, title: "Japanese bread", description: "Japanese bread", level: "Advanced",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic3"), Course(id: 1, course_creator_id: 1, title: "Banana bread", description: "Banana bread", level: "Advanced",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic4")
    ]
    
    /*
    let Courses : [Course] = [
        Course(id: 1, course_creator_id: 1, title: "Babka dough", description: "Babka dough", level: "Intermediate",start_date: DateFormatter().date(from:"19/02/2023")!, end_date:DateFormatter().date(from:"19/02/2023")!, location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic1"), Course(id: 1, course_creator_id: 1, title: "Cinnamon rolls", description: "Cinnamon rolls", level: "Beginner",start_date: DateFormatter().date(from:"19/02/2023")!, end_date:DateFormatter().date(from:"19/02/2023")!, location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic2"), Course(id: 1, course_creator_id: 1, title: "Japanese bread", description: "Japanese bread", level: "Advanced",start_date: DateFormatter().date(from:"19/02/2023")!, end_date:DateFormatter().date(from:"19/02/2023")!, location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic3"), Course(id: 1, course_creator_id: 1, title: "Banana bread", description: "Banana bread", level: "Advanced",start_date: DateFormatter().date(from:"19/02/2023")!, end_date:DateFormatter().date(from:"19/02/2023")!, location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic4")
    ]
    */
    
    
    
    @IBOutlet weak var BakePageTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension BakePageController:UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Courses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = BakePageTable.dequeueReusableCell(withIdentifier: "cellid", for: indexPath) as! BakePageCellTableViewCell
        
        cell.coursePic.image = UIImage(named: Courses[indexPath.row].image)
        cell.courseName.text = Courses[indexPath.row].title
        cell.courseLevel.text = Courses[indexPath.row].level
//        cell.courseDatePic.image = UIImage(named:"clock")
        cell.courseDuration.text = "2H"
//        cell.courseDurationPic.image = UIImage(named: "calender")
        cell.courseDate.text = " 14 Feb"
        //cell.courseDate.text = DateFormatter().string(from: Courses [indexPath.row].start_date)

        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    func tableView(_ tableView: UITableView, widthForRowAt indexPath: IndexPath) -> CGFloat {
        390
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("this row \(indexPath.row) is selected")
    }
    
}
