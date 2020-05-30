//
//  UIViewControllerExt.swift
//  GoalPostApp
//
//  Created by Stephan Ng on 5/28/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

// UIKit includes foundation
import UIKit

// Allows for overriding the default code
// Will be used for changing the animations
extension UIViewController {
    
    func presentDetail(_ viewControllerToPresent: UIViewController){
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.reveal
        transition.subtype = CATransitionSubtype.fromRight
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        // Allows for screen to be full screen rather than a small part removed from the top of the screen
        viewControllerToPresent.modalPresentationStyle = .fullScreen
        
        present(viewControllerToPresent, animated: false, completion: nil)
    }
    
    func presentSecondaryDetail(_ viewControllerToPresent: UIViewController) {
        // This secondary detail allows you to dismiss back to the original screen
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.reveal
        transition.subtype = CATransitionSubtype.fromRight
        
        // Allows for screen to be full screen rather than a small part removed from the top of the screen
        viewControllerToPresent.modalPresentationStyle = .fullScreen
        
        guard let presentedViewController = presentedViewController else { return }
        
        presentedViewController.dismiss(animated: false) {
            self.view.window?.layer.add(transition, forKey: kCATransition)
            self.present(viewControllerToPresent, animated: false, completion: nil)
        }
    }
    
    func dismissDetail(){
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.fade
        transition.subtype = CATransitionSubtype.fromLeft
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
    }
}
