//
//  ViewController.swift
//  iQuiz
//
//  Created by Vicky Juan on 5/1/17.
//  Copyright © 2017 Victoria Juan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    struct dataStructure {
        var subject: String
        var description: String
        
        init(subject: String, description: String) {
            self.subject = subject
            self.description = description
        }
    }
    
    var data = [dataStructure(subject: "Mathematic", description: "I hate math"), dataStructure(subject: "Marvel Super Heroes", description: "I don't like super heros"), dataStructure(subject: "Science", description: "I hate science too")];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = data[indexPath.row].subject
        cell.detailTextLabel?.text = data[indexPath.row].description
        return cell
    }



}

