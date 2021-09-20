//
//  DefaultAppTabBarCoordinator.swift
//  SecureNotes
//
//  Created by Ankur Kesharwani on 13/07/21.
//

class AppTabBarCoordinatorImpl: AppTabBarCoordinator {
    var style: PresentationStyle
    var context: ViewControllerRepresentable?
    weak var controller: ViewControllerRepresentable?

    init(presentationStyle: PresentationStyle,
         presentatiopnContext: ViewControllerRepresentable?) {
        self.style = presentationStyle
        self.context = presentatiopnContext
    }

    func execute() {
        let tabbarController = Container.getAppTabBarController()
        controller = tabbarController
        tabbarController.addController(Container.getNotesController(), "Notes", nil, nil)
        tabbarController.addController(Container.getPasswordsController(), "Passwords", nil, nil)
        startNavigation()
    }
}
