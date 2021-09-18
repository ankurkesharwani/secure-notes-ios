//
//  NotesControllerImpl.swift
//  SecureNotes
//
//  Created by Ankur Kesharwani on 13/07/21.
//

import UIKit

class NotesControllerImpl: UIViewController, NotesController {

    init(bundle: Bundle? = Bundle.main) {
        super.init(nibName: nil, bundle: bundle)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Notes"
        view.backgroundColor = UIColor.green
    }
}
