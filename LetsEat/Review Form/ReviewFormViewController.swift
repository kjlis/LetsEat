//
//  ReviewFormViewController.swift
//  LetsEat
//
//  Created by Krzysztof Lis on 9/15/18.
//  Copyright © 2018 Random Stuff. All rights reserved.
//

import UIKit

class ReviewFormViewController: UITableViewController {

    @IBOutlet weak var ratingView: RatingView!
    @IBOutlet weak var tfTitle: UITextField!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tvReview: UITextView!
    
    @IBAction func onSaveTapped(_ sender: Any) {
        print(ratingView.rating)
        print(tfTitle.text as Any)
        print(tfName.text as Any)
        print(tvReview.text)
        
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
