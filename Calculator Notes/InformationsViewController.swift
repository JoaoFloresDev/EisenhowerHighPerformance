//
//  InformationsViewController.swift
//  Calculator Notes
//
//  Created by Joao Flores on 27/04/20.
//  Copyright © 2020 Joao Flores. All rights reserved.
//

import UIKit

class InformationsViewController: UIViewController {

//    MARK: - IBOutlets
    @IBOutlet weak var matrixView: UIView!
    
    @IBOutlet weak var Q1: UIView!
    @IBOutlet weak var Q2: UIView!
    @IBOutlet weak var Q3: UIView!
    @IBOutlet weak var Q4: UIView!
    @IBOutlet weak var matrixLabel1: UILabel!
    @IBOutlet weak var matrixLabel2: UILabel!
    @IBOutlet weak var squareView: UIView!
    
    @IBOutlet weak var doView: UIView!
    @IBOutlet weak var decideView: UIView!
    @IBOutlet weak var delegateView: UIView!
    @IBOutlet weak var deleteView: UIView!
    @IBOutlet weak var importantView: UIView!
    @IBOutlet weak var urgentView: UIView!
    
//    MARK: - IBActions
    
    @IBAction func mktDispensado(_ sender: Any) {
        let urlStr = "itms-apps://itunes.apple.com/app/apple-store/id1508371263"
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(URL(string: urlStr)!, options: [:], completionHandler: nil)
            
        } else {
            UIApplication.shared.openURL(URL(string: urlStr)!)
        }
    }
    
    @IBAction func mktDrawInAir(_ sender: Any) {
        let urlStr = "itms-apps://itunes.apple.com/app/apple-store/id1502280869"
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(URL(string: urlStr)!, options: [:], completionHandler: nil)
            
        } else {
            UIApplication.shared.openURL(URL(string: urlStr)!)
        }
    }
    
    @IBAction func mktCalcNotes(_ sender: Any) {
        let urlStr = "itms-apps://itunes.apple.com/app/apple-store/id1479873340"
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(URL(string: urlStr)!, options: [:], completionHandler: nil)
            
        } else {
            UIApplication.shared.openURL(URL(string: urlStr)!)
        }
    }
    
    @IBAction func mktTrucoM(_ sender: Any) {
        let urlStr = "itms-apps://itunes.apple.com/app/apple-store/id1486427751"
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(URL(string: urlStr)!, options: [:], completionHandler: nil)
            
        } else {
            UIApplication.shared.openURL(URL(string: urlStr)!)
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        matrixLabel1.text = "Important"
        matrixLabel2.text = "Not Important"
        
        matrixLabel1.transform = CGAffineTransform(rotationAngle: -3.14/2)
        matrixLabel2.transform = CGAffineTransform(rotationAngle: -3.14/2)
        
        matrixLabel1.frame = CGRect(x: 10, y: Q1.center.y + 15, width: 20, height: 138.5)
        matrixLabel2.frame = CGRect(x: 10, y: Q4.center.y + 15, width: 20, height: 138.5)
        
        StyleClass().cropBounds(viewlayer: Q1.layer, cornerRadius: 10)
        StyleClass().cropBounds(viewlayer: Q2.layer, cornerRadius: 10)
        StyleClass().cropBounds(viewlayer: Q3.layer, cornerRadius: 10)
        StyleClass().cropBounds(viewlayer: Q4.layer, cornerRadius: 10)
        
        StyleClass().applicShadow(Layer: Q1.layer)
        StyleClass().applicShadow(Layer: Q2.layer)
        StyleClass().applicShadow(Layer: Q3.layer)
        StyleClass().applicShadow(Layer: Q4.layer)
        
        StyleClass().cropBounds(viewlayer: decideView.layer, cornerRadius: 10)
        StyleClass().cropBounds(viewlayer: delegateView.layer, cornerRadius: 10)
        StyleClass().cropBounds(viewlayer: deleteView.layer, cornerRadius: 10)
        StyleClass().cropBounds(viewlayer: importantView.layer, cornerRadius: 10)
        StyleClass().cropBounds(viewlayer: doView.layer, cornerRadius: 10)
        
        StyleClass().applicShadow(Layer: decideView.layer)
        StyleClass().applicShadow(Layer: delegateView.layer)
        StyleClass().applicShadow(Layer: deleteView.layer)
        StyleClass().applicShadow(Layer: importantView.layer)
        StyleClass().applicShadow(Layer: doView.layer)
        
        StyleClass().cropBounds(viewlayer: matrixView.layer, cornerRadius: 10)
        StyleClass().applicShadow(Layer: matrixView.layer)
        
        StyleClass().cropBounds(viewlayer: urgentView.layer, cornerRadius: 10)
        StyleClass().applicShadow(Layer: urgentView.layer)
    }

}
