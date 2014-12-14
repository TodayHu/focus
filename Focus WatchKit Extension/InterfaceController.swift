//
//  InterfaceController.swift
//  Focus WatchKit Extension
//
//  Created by Daniel Lam on 14/12/2014.
//  Copyright (c) 2014 Lamophone Pty Ltd. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var statusImage: WKInterfaceImage!
    @IBOutlet var powerButton: WKInterfaceButton!
    var isFocused = false

    override init(context: AnyObject?) {
        // Initialize variables here.
        super.init(context: context)
        
        // Configure interface objects here.
        NSLog("%@ init", self)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        NSLog("%@ will activate", self)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        NSLog("%@ did deactivate", self)
        super.didDeactivate()
    }

    @IBAction func buttonTapped() {
        NSLog("button tapped.")
        isFocused = !isFocused
        updateUI()
    }
    
    func updateUI() {
        if isFocused {
            statusImage.setImageNamed("speed-orange")
            powerButton.setBackgroundImageNamed("power-button-red")
        } else {
            statusImage.setImageNamed("speed-white-small")
            powerButton.setBackgroundImageNamed("power-button-green")
        }
    }
}
