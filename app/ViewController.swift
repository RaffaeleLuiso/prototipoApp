//
//  ViewController.swift
//  app
//
//  Created by Roberto Caputi on 14/03/18.
//  Copyright © 2018 Roberto Caputi. All rights reserved.
//

import UIKit

class ViewController:
UIViewController,
UITableViewDelegate,
UITableViewDataSource {
    
    let elements = ["polacca", "aversa"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        
        tableView.delegate = self
        tableView.dataSource = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    func tableView(_tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! TableViewCell
        
            cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 5
        
        cell.polaccaLabel.text = elements[indexPath.row]
        cell.polaccaImage.image = UIImage(named: elements[indexPath.row])
        cell.polaccaImage.layer.cornerRadius = cell.polaccaImage.frame.height / 5
        
        return cell
    }

}

