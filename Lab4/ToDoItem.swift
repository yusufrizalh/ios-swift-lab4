//
//  ToDoItem.swift
//  Lab4
//
//  Created by Inixindo on 08/06/21.
//

import UIKit

class ToDoItem: NSObject {
    var itemName: String
    var itemDescription: String?
    var itemPlace: String?
    var completed: Bool

    init(name: String, desc: String?, place: String?){
        self.itemName = name
        self.itemDescription = desc
        self.itemPlace = place
        self.completed = false
    }
}
