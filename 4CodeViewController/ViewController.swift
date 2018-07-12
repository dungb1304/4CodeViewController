//
//  ViewController.swift
//  4CodeViewController
//
//  Created by DungB96 on 2018/05/28.
//  Copyright © 2018 DungB96. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let mainTableView = MainTableView() // create instance of tableView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func setup(){
        self.view.addSubview(mainTableView)
        
        //tat ca cac canh cua tableView trung voi canh man hinh
        mainTableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        mainTableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        mainTableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        mainTableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -10).isActive = true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

