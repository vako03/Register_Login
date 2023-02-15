//
//  AddNewPostViewController.swift
//  Homework 17
//
//  Created by valeri mekhashishvili on 2/2/23.
//

import UIKit

protocol AddPostDelegate: AnyObject {
    func postAdded(title: String, description: String)
}

class AddPostViewController: UIViewController {
    
    
    @IBOutlet private weak var titleTextField: UITextField!
    
    @IBOutlet private weak var descriptionTextField: UITextField!
    
    weak var delegate: AddPostDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func addPostTapped(_ sender: UIButton) {
        delegate?.postAdded(title: titleTextField.text ?? "", description: descriptionTextField.text ?? "")
        dismiss(animated: true)
    }
}
