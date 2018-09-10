//
//  ViewController.swift
//  aging
//
//  Created by Isabell Frischmann on 9/10/18.
//  Copyright © 2018 Isabell Frischmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var names: [String?] = ["Isabell", "Manuel", "Lucas", "Neil", "Ashwin", "Eli", "Heather", "Theresa", "Erin", "Alex", "Daisy", "Steffi"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}   

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        returns all the names in the array
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //        create a random number for every person in the names array
        let randomAge: Int = Int(arc4random_uniform(90) + 5)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "persons", for: indexPath)
        
//        To print out the details on the left side on the screen
        cell.textLabel?.text = names[indexPath.row]
        
//        To print out the details on the right side on the screen
        cell.detailTextLabel?.text = "\(randomAge) years old"
//        print("That's the random age from persons -> ", randomAge)
        
        return cell
    }
}

