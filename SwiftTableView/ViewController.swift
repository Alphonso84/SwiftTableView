//
//  ViewController.swift
//  SwiftTableView
//
//  Created by user on 8/8/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    public var family = ["Alphonso", "Chelsea","Thomas"]
    var tableView: UITableView!
    
    func createAndShowTableView() {
        tableView = UITableView(frame: CGRect(x: self.view.frame.origin.x, y: self.view.frame.origin.y, width: self.view.frame.width, height: self.view.frame.height))
        tableView.register(MyCell.self, forCellReuseIdentifier: "myCell")
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
    }
    
    override func viewDidLayoutSubviews() {
        createAndShowTableView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createAndShowTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        family.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.detailTextLabel?.text = family[indexPath.row]
        return cell
    }
    
    
    
    
    
}

