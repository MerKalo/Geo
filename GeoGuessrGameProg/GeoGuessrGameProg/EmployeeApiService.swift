//
//  User.swift
//  GeoGuessrGameProg
//
//  Created by Vadim Круэл@ on 04.10.2022.
//

import Foundation

//struct User: Codable{
//    let name: String
//}

struct WelcomeElement: Codable {
    let id: Int
    let title, body: String
    let imageURL: String
    let author, latitude1, longitude1, latitude2: String
    let longitude2, latitude3, longitude3, latitude4: String
    let longitude4, latitude5, longitude5, latitude6: String
    let longitude6, latitude7, longitude7, latitude8: String
    let longitude8: String

    enum CodingKeys: String, CodingKey {
        case id, title, body
        case imageURL = "imageUrl"
        case author, latitude1, longitude1, latitude2, longitude2, latitude3, longitude3, latitude4, longitude4, latitude5, longitude5, latitude6, longitude6, latitude7, longitude7, latitude8, longitude8
    }
}

typealias Welcome = [WelcomeElement]
