//
//  ViewController.swift
//  ToDoList
//
//  Created by Chengjiu Hong on 10/14/16.
//  Copyright © 2016 Chengjiu Hong. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate  {
    let toDoList: [Int:String] = [0:"Shower", 1:"Eat", 2:"Sleep", 3:"Coding"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate=self
        tableView.dataSource=self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return toDoList.count ?? 0
    
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell", for: indexPath)
            cell.textLabel?.text = toDoList[indexPath.row]
            return cell
     }

 

}

