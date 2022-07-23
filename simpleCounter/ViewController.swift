//
//  ViewController.swift
//  simpleCounter
//
//  Created by  admin on 22.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterStateLabel: UILabel!
    
    var counter: UInt = 0
    
    @IBAction func incrementButtonDidTap(_ sender: Any) {
        guard counter < UInt.max else {
            return
        }
        counter+=1
        counterStateLabel.text = "Значение счётчика: \(counter)"
    }

}

