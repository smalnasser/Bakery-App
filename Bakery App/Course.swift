//
//  Course.swift
//  Bakery App
//
//  Created by sarah alnasser on 23/08/1444 AH.
//

import Foundation
struct Course : Codable
{
    let id: Int
    let course_creator_id : Int
    let title : String
    let description: String
    let level: String
  
    let start_date : Date
    let end_date : Date
    let location_name :String
    let location_latitude : Int
    let location_longitude : Int
    let image : String
}
