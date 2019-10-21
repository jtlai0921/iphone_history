//
//  ScoreViewController.swift
//  SingletonClass0828
//
//  Created by Robert on 2019/8/30.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {
    @IBOutlet var backgroundImageView:UIImageView!;
    var city:City!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = city.cityName;        
        let blurEffect = UIBlurEffect(style: .dark);
        let blureEffectView = UIVisualEffectView(effect: blurEffect)
        blureEffectView.frame = view.frame;
        backgroundImageView.image = UIImage(named: city.image);
        view.insertSubview(blureEffectView, aboveSubview: backgroundImageView)
        
        
    }
    

    
}
