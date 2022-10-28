//
//  ViewControllerRepresentable.swift
//  SecureNotes
//
//  Created by Ankur Kesharwani on 13/07/21.
//

import UIKit

protocol ViewControllerRepresentable: AnyObject {
    func asUIViewController() -> UIViewController
    func push(_ controller: ViewControllerRepresentable, animated: Bool)
    func present(_ controller: ViewControllerRepresentable, animated: Bool)
}

extension ViewControllerRepresentable where Self: UIViewController {
    func asUIViewController() -> UIViewController {
        return self
    }

    func push(_ controller: ViewControllerRepresentable, animated: Bool) {
        self.navigationController?.pushViewController(
            controller.asUIViewController(),
            animated: animated
        )
    }

    func present(_ controller: ViewControllerRepresentable, animated: Bool) {
        self.present(controller.asUIViewController(), animated: true)
    }
}
