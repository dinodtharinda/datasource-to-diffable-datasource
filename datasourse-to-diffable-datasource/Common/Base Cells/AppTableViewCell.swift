//
//  AppTableViewCell.swift
//  allianz
//
//  Created by Thisura Dodangoda on 2020-12-10.
//  Copyright © 2020 Bhasha. All rights reserved.
//

import UIKit
import Foundation

/**
 A base UITableViewCell protocol with some
 basic boilerplate code.
 
 Introduced on 10th DEC 2020
 */
protocol AppTableViewCell{
    
    associatedtype CellModel = AnyObject
    static var identifier: String { get }
    static func register(inTableView: UITableView)
    static func dequeue(from tableView: UITableView, _ data: CellModel?) -> UITableViewCell
    func initialize(_ data: CellModel?)
}

extension AppTableViewCell{
    
    static func register(inTableView: UITableView){
        let nib = UINib(nibName: identifier, bundle: nil)
        inTableView.register(nib, forCellReuseIdentifier: identifier)
    }
    static func dequeue(from tableView: UITableView, _ data: Self.CellModel?) -> UITableViewCell{
        guard let cell = tableView.dequeueReusableCell(withIdentifier: identifier) else{
            fatalError("""
                Could not dequue cell with identifier, '\(identifier)'.
                Check if cell is registered and reuse identifier is set in cell XIB.
            """)
        }
        let cast = cell as! Self
        cast.initialize(data)
        return cell
    }
    
}
