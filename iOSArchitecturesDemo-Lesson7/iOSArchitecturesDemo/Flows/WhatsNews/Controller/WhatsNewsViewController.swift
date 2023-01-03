//
//  WhatsNewsViewController.swift
//  iOSArchitecturesDemo
//
//  Created by Alexander Obotnin on 28.12.2022.
//  Copyright © 2022 Alexander Obotnin. All rights reserved.
//

import UIKit

class WhatsNewsViewController: UIViewController {
    
    // MARK: - Properties
    
    private let app: ITunesApp
    
    private var whatsNewsView: WhatsNewsView {
        return self.view as! WhatsNewsView
    }
    
    // MARK: - Init
    
    init(app: ITunesApp) {
        self.app = app
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
        self.view = WhatsNewsView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fillData()
    }
    
    // MARK: - Private
    
    private func fillData() {
        self.whatsNewsView.versionNumberLabel.text = app.version
        self.whatsNewsView.timeLabel.text =
        app.currentVersionReleaseDate?.toDate()?.toString()
        self.whatsNewsView.descriptionLabel.text = app.releaseNotes
    }
    
}
