//
//  BakeryVC.swift
//  Bakery App
//
//  Created by sarah alnasser on 23/08/1444 AH.
//

import UIKit

class BakeryVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let Courses : [Course] = [
        Course(id: 1, course_creator_id: 1, title: "Babka dough", description: "Babka dough", level: "Intermediate",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic1"), Course(id: 1, course_creator_id: 1, title: "Cinnamon rolls", description: "Cinnamon rolls", level: "Beginner",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic2"), Course(id: 1, course_creator_id: 1, title: "Japanese bread", description: "Japanese bread", level: "Advanced",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic3"), Course(id: 1, course_creator_id: 1, title: "Banana bread", description: "Banana bread", level: "Advanced",start_date: Date(), end_date:Date(), location_name: "Riyadh", location_latitude: 1, location_longitude: 1, image: "pic4")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Courses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid", for: indexPath) as! BakePageCellTableViewCell
        
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
