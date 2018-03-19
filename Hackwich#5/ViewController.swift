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
    var favoriteRestaurantArray = ["L&L", "Zippys","Dennys", "McDonalds","Chilis"]
    
    //Restaurant Image  Data
    var restaurantImageData = [String]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//set VC as delgate
        //self.tableview.datasource = self
        
        //part 6
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        restaurantImageData = dict!.object(forKey: "restaurantImages") as! [String]
   
    
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return favoriteRestaurantArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //set up cell to display items in studentArray
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        let text = favoriteRestaurantArray[indexPath.row]
        cell.textLabel?.text = text
        return cell

    }
    
    //part 7
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexpath: IndexPath) {
        tableView.deselectRow(at: indexpath as IndexPath, animated: true)
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "mySegue"
       {
            let s1 = segue.destination as! detailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageData[imageIndex!]
        }
    
    }
    
}

