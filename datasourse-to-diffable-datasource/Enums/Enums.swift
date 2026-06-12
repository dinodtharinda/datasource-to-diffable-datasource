//
//  Enums.swift
//  datasourse-to-diffable-datasource
//
//  Created by Dinod Tharinda on 2026-06-12.
//

import Foundation


enum ProDashBoardCardTag : String , Codable{
    case Card_Keyboard = "kbrd"
    case Card_Bullet = "bult"
    case Card_News = "news"
    case Card_Chat = "chat"
    case Card_Pay = "pay"
    case Card_Read = "read"
    case Card_WebModule = "webm"
    case Card_ModuleCard = "smodules"
    case Card_More = "more"
    case Card_Favourites = "fav"
    
    // Basic
    case Card_Ad = "ad-static"
    case Card_Lottie = "lottie"
    case Card_Category = "category"
    case Card_Ad_Dynamic = "ad-dynamic"
}


enum StaticSectionType : RawRepresentable, Hashable {
    
    init?(rawValue: Int) {
        switch rawValue {
        case 0:
            self = .DashboardHeader
        case -1:
            self = .All
        default:
            self = .Dynamic(nil)
        }
    }
    
    case DashboardHeader
    case Dynamic(ProDashBoardCardTag?)
    case All
    
    var rawValue: Int {
        switch self {
        case .DashboardHeader:
            0
        case .Dynamic(_):
            -1
        case .All:
            -2
        }
    }
    
}
