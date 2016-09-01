//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    
    // Create your methods here
    func addNameToDeliLine (name: String) -> String {
        var greeting: String = ""
        switch name {
        case "Billy Crystal":
            deliLine.insert(name, atIndex: 0)
            greeting = "Welcome Billy! You can sit wherever you like."
        case "Meg Ryan":
            deliLine.insert(name, atIndex: 0)
            greeting = "Welcome Meg! You can sit wherever you like."
        default:
            deliLine.append(name)
            for (index, person) in deliLine.enumerate() {
                if index == 0 {
                    greeting = "Welcome \(person), you're first in line!"
                } else {
                    greeting = "Welcome \(person), you're number \(index + 1) in line."
                }
            }
        }
        return greeting
    }
    
    func nowServing () -> String {
        var message: String = ""
        if deliLine.isEmpty {
            message = "There is no one to be served."
        } else {
            message = "Now serving \(deliLine[0])."
        }
        deliLine.removeAtIndex(0)
        return message
    }
    
    func deliLineDescription () -> String {
        var message: String = ""
        if deliLine.isEmpty {
            message = "The line is currently empty."
        } else {
            message = "The line is:"
            for (index, name) in deliLine.enumerate() {
                message = message.stringByAppendingString("\n\(index). \(name)")
            }
        }
        return message
    }

}

