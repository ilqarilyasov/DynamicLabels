//
//  DetailViewController.swift
//  DynamicLabels
//
//  Created by Ilgar Ilyasov on 6/15/19.
//  Copyright © 2019 IIIyasov. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var longTexts: [String]? {
        didSet { updateViews() }
    }

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var forthLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstLabel.numberOfLines = 0
        secondLabel.numberOfLines = 0
        thirdLabel.numberOfLines = 0
        forthLabel.numberOfLines = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateViews()
    }

    private func updateViews() {
        guard isViewLoaded,
            let texts = longTexts else { return }
        
        firstLabel.text = texts[0]
        secondLabel.text = texts[1]
        thirdLabel.text = texts[2]
        forthLabel.text = texts[3]
    }
}
