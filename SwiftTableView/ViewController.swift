//
//  ViewController.swift
//  SwiftTableView
//
//  Created by user on 8/8/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var tableView: UITableView!
    
    override func viewDidLoad() {
           super.viewDidLoad()
           tableView = UITableView(frame: CGRect(x: 0, y: 400, width: 400, height: 800))
           tableView.register(UITableViewCell.self, forCellReuseIdentifier: "myCell")
           tableView.delegate = self
           tableView.dataSource = self
           self.view.addSubview(tableView)
       }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel!.text = "Hello World"
        return cell
    }
    

   


}

