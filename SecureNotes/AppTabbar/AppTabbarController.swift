//
//  AppTabbarController.swift
//  SecureNotes
//
//  Created by Ankur Kesharwani on 13/07/21.
//

import UIKit

protocol AppTabBarController: ViewControllerRepresentable {
    func addController(_ childController: ViewControllerRepresentable,
                       _ title: String,
                       _ image: UIImage?,
                       _ selectedImage: UIImage?)
}
