//
//  CustomTabBarViewController.swift
//  Dummy
//
//  Created by Jitendra Solanki on 2/3/17.
//  Copyright © 2017 jitendra. All rights reserved.
//

import UIKit


class CustomTabBarViewController: UITabBarController,UIGestureRecognizerDelegate {

    
    var numOf_tabs:Int = 0
     override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        //assign total number of tabs
        if let vc =  self.viewControllers{
            numOf_tabs  = vc.count
        }
        
        //add left and right swipe gesture to main view
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(doSwipe(recognizer:)))
        swipeRight.direction = .right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(doSwipe(recognizer:)))
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeLeft)
    }

    //MARK:- Gesture handler
    func doSwipe(recognizer:UISwipeGestureRecognizer){
        
        switch recognizer.direction {
        case UISwipeGestureRecognizerDirection.left:
            print("swiped left")
            
            if self.selectedIndex != numOf_tabs-1{
                self.selectedIndex += 1
            }
        case UISwipeGestureRecognizerDirection.right:
            print("swiped right")
            if self.selectedIndex != 0{
                self.selectedIndex -= 1
            }
        default:
            print("swipe not detected")
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
