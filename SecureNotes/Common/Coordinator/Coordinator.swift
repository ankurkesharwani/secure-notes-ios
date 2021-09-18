//
//  Coordinator.swift
//  SecureNotes
//
//  Created by Ankur Kesharwani on 13/07/21.
//

import UIKit

enum PresentationStyle {
    case windowRoot
    case push
    case present
}

protocol Coordinator: AnyObject {
    var style: PresentationStyle { get }
    var controller: ViewControllerRepresentable? { get }
    var context: ViewControllerRepresentable? { get }
    
    func execute()
    func startNavigation()
    func dismiss(_ completion: ((_ success: Bool) -> Void)?)
}

extension Coordinator {
    func startNavigation() {
        switch style {
        case .windowRoot:
            let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate
            let window = sceneDelegate?.window
            window?.rootViewController = controller?.asUIViewController()
            window?.makeKeyAndVisible()
        case .push:
            if let controller = self.controller {
                context?.push(controller, animated: true)
            }
        case .present:
            if let controller = self.controller {
                context?.present(controller, animated: true)
            }
        }
    }
    
    func dismiss(_ completion: ((_ success: Bool) -> Void)?) {
        switch style {
        case .windowRoot:
            // Cannot dismiss
            completion?(false)
            break;
        case .push:
            // Todo: Figure out animation end to call the completion handler.
            controller?.asUIViewController().navigationController?.popViewController(animated: true)
        case .present:
            controller?.asUIViewController().dismiss(animated: true, completion: {
                completion?(true)
            })
        }
    }
}

