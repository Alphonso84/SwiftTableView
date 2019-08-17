//
//  myCell.swift
//  SwiftTableView
//
//  Created by user on 8/8/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit


class MyCell: UITableViewCell {
    
    
    var counter = Int()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style:style,reuseIdentifier:reuseIdentifier)
        initializeCellProperties()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func nameFromArray(array:[String]) -> String {
        
        var returnedString = String()
        for name in array {
            returnedString = name
        }
        return returnedString
    }
    func initializeCellProperties() {
        self.textLabel!.text = "Test"
        //self.detailTextLabel?.text = "job"
    }
}
