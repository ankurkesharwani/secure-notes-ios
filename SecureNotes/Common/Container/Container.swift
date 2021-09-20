//
//  Container.swift
//  SecureNotes
//
//  Created by Ankur Kesharwani on 13/07/21.
//

import Foundation

class Container {
    static func getAppTabBarCoordinator(presentationStyle: PresentationStyle,
                                        presentatiopnContext: ViewControllerRepresentable?) -> AppTabBarCoordinator {
        return AppTabBarCoordinatorImpl(presentationStyle: presentationStyle,
                                           presentatiopnContext: presentatiopnContext)
    }

    static func getAppTabBarController() -> AppTabBarController {
        return AppTabBarControllerImpl()
    }

    static func getNotesController() -> NotesController {
        return NotesControllerImpl()
    }

    static func getPasswordsController() -> PasswordsController {
        return PasswordsControllerImpl()
    }
}
