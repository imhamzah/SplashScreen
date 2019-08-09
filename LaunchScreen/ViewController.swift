//
//  ViewController.swift
//  LaunchScreen
//
//  Created by Reactive Space 1 on 26/07/2019.
//  Copyright © 2019 Reactive Space 1. All rights reserved.
//

import UIKit
import RevealingSplashView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Initialize a revealing Splash with with the iconImage, the initial size and the background color
        //let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "twitterlogo")!, iconInitialSize: CGSize(width: 70, height: 70), backgroundImage: UIImage(named: "")!)
        
        let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "twitterlogo")!,iconInitialSize: CGSize(width: 70, height: 70), backgroundColor: UIColor(red:0.11, green:0.56, blue:0.95, alpha:1.0))

        
        
        revealingSplashView.useCustomIconColor = false
        revealingSplashView.iconColor = UIColor.red
        
        //Adds the revealing splash view as a sub view
        self.view.addSubview(revealingSplashView)
        
        //Starts animation
        revealingSplashView.animationType = .swingAndZoomOut
        revealingSplashView.startAnimation(){
            print("Completed")
        }
        
    }
    
    override func loadView() {
        super.loadView()
    }

}

