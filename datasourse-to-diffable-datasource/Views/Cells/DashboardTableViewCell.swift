//
//  DashboardTableViewCell.swift
//  datasourse-to-diffable-datasource
//
//  Created by Dinod Tharinda on 2026-06-12.
//

import UIKit

class DashboardTableViewCell: UITableViewCell, AppTableViewCell {
    static var identifier: String = "DashboardTableViewCell"

    @IBOutlet private weak var labelTitle: UILabel!
    

    func initialize(_ data: String?) {
        labelTitle.text = data ?? "No Data"
    }
    
    static func dequeue(from tableView: UITableView, _ data: String?) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier) as! DashboardTableViewCell
        cell.initialize(data)
        return cell
    }


    
    
}
