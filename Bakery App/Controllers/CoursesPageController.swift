//
//  CoursesPageController.swift
//  Bakery App
//
//  Created by sarah alnasser on 24/08/1444 AH.
//

import UIKit

class CoursesPageController: UIViewController {

    @IBOutlet weak var coursetable: UITableView!
    
    let searchcontroller = UISearchController()
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        title = "Search"
        navigationItem.searchController = searchcontroller
        
                // Do any additional setup after loading the view.
    }
    
    


}

extension CoursesPageController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Courses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellCourses", for: indexPath) as! CourseTableViewCell

        cell.Courseimag.image = UIImage(named: Courses[indexPath.row].image)
        cell.courseName.text = Courses[indexPath.row].title
        cell.courseLevel.text = Courses[indexPath.row].level
        cell.courseDuration.text = "2H"
        cell.courseDate.text = " 14 Feb - 4:00"
        
        return cell
        
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        105
    }
    func tableView(_ tableView: UITableView, widthForRowAt indexPath: IndexPath) -> CGFloat {
        390
    }
    
}
