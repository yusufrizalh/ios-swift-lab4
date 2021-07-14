//
//  ViewController.swift
//  Lab4
//
//  Created by Inixindo on 08/06/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var itemsArray: NSMutableArray = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as UITableViewCell?
        let tempItems = itemsArray[indexPath.row] as! ToDoItem
        // cell?.textLabel?.text = "Hello Inixindo"
        cell?.textLabel?.text = tempItems.itemName
        cell?.detailTextLabel?.text = tempItems.itemDescription
        return cell!
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let item1 = ToDoItem(name: "Code", desc: "Coding until I am stressful.", place: "Inix Office")
        let item2 = ToDoItem(name: "Eat", desc: "Eat until I am full.", place: "Food court")
        let item3 = ToDoItem(name: "Sleep", desc: "Sleep until I am wakeup.", place: "My Place")
        
        itemsArray.add(item1)
        itemsArray.add(item2)
        itemsArray.add(item3)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue" {
            let destinationVC = segue.destination as! DetailViewController
            let selectedIndex = tableView.indexPathForSelectedRow
            destinationVC.myItem = itemsArray[selectedIndex!.row] as? ToDoItem
        }
    }

}

