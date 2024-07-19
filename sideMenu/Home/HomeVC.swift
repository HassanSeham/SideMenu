//
//  HomeVC.swift
//  sideMenu
//
//  Created by adminnoadmin on 19/07/2024.
//

import UIKit

class HomeVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
        let leftBarButtonItem = UIBarButtonItem.init(image: UIImage(systemName: "line.3.horizontal"), style: .plain, target: self, action: #selector(addTapped))

        self.navigationItem.leftBarButtonItem = leftBarButtonItem
    }
    @objc func addTapped(sender: UIBarButtonItem) {
        let sideMenuVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sideMenuVC") as! sideMenuVC
        sideMenuVC.vc = self
//        sideMenuVC.modalTransitionStyle = .coverVertical
        sideMenuVC.modalPresentationStyle = .overFullScreen
        let transition = CATransition()
           transition.duration = 0.5
        transition.type = CATransitionType.reveal
        transition.subtype = CATransitionSubtype.fromLeft
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.linear)
           view.window!.layer.add(transition, forKey: kCATransition)
        present(sideMenuVC, animated: false)
    }

}
