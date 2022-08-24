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
    
    func incrementValue() {
        guard counter < UInt.max else {
            return
        }
        counter+=1
        counterStateLabel.text = "Значение счётчика: \(counter)"
    }
    
    @IBAction func incrementButtonDidTap(_ sender: Any) {
        let alert = AlertPresenter(
            title: "Title",
            message: "Я хочу, чтобы функция incrementValue() вызвалась после нажатия на кнопку алерта",
            controller: self
            /*, someClosure: someClosure(currentQuestion!)*/)
        alert.show()
        //incrementValue()
        
    }
}

