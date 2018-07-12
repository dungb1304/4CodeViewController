//
//  MainTableView.swift
//  4CodeViewController
//
//  Created by DungB96 on 2018/05/28.
//  Copyright © 2018 DungB96. All rights reserved.
//

import Foundation
import UIKit

class MainTableView: UITableView, UITableViewDelegate, UITableViewDataSource {
    override init(frame: CGRect, style: UITableViewStyle){
        super.init(frame: CGRect.zero, style: .grouped)
    
    //adopt functions in delegate for this tableView
        self.delegate = self
        self.dataSource = self
        
    //To use autoLayout for this tablView, add these code below:
        self.translatesAutoresizingMaskIntoConstraints = false
    
    //Register cell with id : "cellID" for tableView
//        self.register(Cus.self, forCellReuseIdentifier: "cellID")
        self.register(CustomCell.self, forCellReuseIdentifier: "cellID")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! CustomCell
        return cell
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
