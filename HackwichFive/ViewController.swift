//
//  ViewController.swift
//  HackwichFive
//
//  Created by Makayla Yanos on 2/26/18.
//  Copyright © 2018 Makayla Yanos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //Declare array here
    var myFriendsArray = ["Mike Wazowski", "Woody", "Belle", "Winnie the Pooh", "Stitch"]
    var kapoleiRestaurantsArray = ["Kapolei Kalapawai"]
    var restaurantImageData = [String]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        tableView.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //Part 6
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        //access images from dictionary from Property List
        restaurantImageData = dict!.object(forKey: "restaurantImages") as! [String]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
      
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myFriendsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellResuseIdentifier")!
        
        let text = myFriendsArray[indexPath.row]
        
        cell.textLabel?.text = text
        
        return cell
    }
    
    //part 7
    func tableView(_tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: <#T##IndexPath#> as IndexPath, animated: true)
    }

}

