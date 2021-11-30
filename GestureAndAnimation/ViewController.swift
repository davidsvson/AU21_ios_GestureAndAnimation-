//
//  ViewController.swift
//  GestureAndAnimation
//
//  Created by David Svensson on 2021-11-30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var singleTapRecognizer: UITapGestureRecognizer!
    @IBOutlet var doubleTapRecognizer: UITapGestureRecognizer!
    
    
    @IBOutlet weak var gestureNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        singleTapRecognizer.require(toFail: doubleTapRecognizer)
        
    }
    
    
    @IBAction func handleTap(_ sender: UITapGestureRecognizer) {
       showGesture(name: "tap")
    

        
    }
    
    
    @IBAction func handleDoubleTap(_ sender: UITapGestureRecognizer) {
        showGesture(name: "tap tap")
        
    }
    
    
    func showGesture(name: String) {
        gestureNameLabel.text = name
        
        UIView.animate(withDuration: 1, animations: { self.gestureNameLabel.alpha = 1.0 }, completion: animamateLabelInvicible(finished:))
        
    }
    
    func animamateLabelInvicible(finished: Bool) {
        UIView.animate(withDuration: 1, animations: { self.gestureNameLabel.alpha = 0.0 }, completion: nil)
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
      
        if motion == .motionShake {
            showGesture(name: "shake")
        }
    }
    
}



