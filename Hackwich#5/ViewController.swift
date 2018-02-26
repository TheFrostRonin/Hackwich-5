//
//  ViewController.swift
//  Hackwich#5
//
//  Created by CM Student on 2/26/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource   {
//define an array variable using an array literal with 5 items of type string
    
    @IBOutlet weak var tableView: UITableView!
    var greatfriendArray = ["Kaito","Jeorge","Akane","Cole","Mei"]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//set VC as delgate
        //self.tableview.datasource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return greatfriendArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //set up cell to display items in studentArray
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        let text = greatfriendArray[indexPath.row]
        cell.textLabel?.text = text
        return cell

    }
    
    
}

