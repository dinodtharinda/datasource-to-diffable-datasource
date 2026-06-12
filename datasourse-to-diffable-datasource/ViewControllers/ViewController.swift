//
//  ViewController.swift
//  datasourse-to-diffable-datasource
//
//  Created by Dinod Tharinda on 2026-06-12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    
    
    var titleList:[String] = ["Apple", "Mango", "Banana","Apple", "Mango", "Banana" ,"Apple", "Mango", "Banana"  ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableVie()
    }
    
    
    private func setupTableVie(){
        tableView.dataSource = self
        tableView.delegate = self
        DashboardTableViewCell.register(inTableView: tableView)
    }
    
    
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        titleList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = DashboardTableViewCell.dequeue(from: tableView, titleList[indexPath.row])
        
        return cell;
    }
    
    
}


extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(titleList[indexPath.row])
    }
}

