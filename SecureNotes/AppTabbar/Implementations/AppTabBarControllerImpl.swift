//
//  DefaultAppTabBarController.swift
//  SecureNotes
//
//  Created by Ankur Kesharwani on 13/07/21.
//

import UIKit

class AppTabBarControllerImpl: UITabBarController, AppTabBarController {
    
    func addController(_ childController: ViewControllerRepresentable,
                       _ title: String,
                       _ image: UIImage?,
                       _ selectedImage: UIImage?) {
        let viewController = childController.asUIViewController()
        let barButtonItem = UITabBarItem(title: title,
                                         image: image,
                                         selectedImage: selectedImage)
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem = barButtonItem
        addChild(navigationController)
    }
}
