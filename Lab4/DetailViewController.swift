//
//  DetailViewController.swift
//  Lab4
//
//  Created by Inixindo on 09/06/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    var myItem: ToDoItem?

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var placeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = myItem?.itemName
        descriptionLabel.text = myItem?.itemDescription
        placeLabel.text = myItem?.itemPlace
    }
    
}
