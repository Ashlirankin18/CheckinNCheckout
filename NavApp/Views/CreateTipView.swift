//
//  CreateVenueView.swift
//  NavApp
//
//  Created by Jeffrey Almonte on 2/11/19.
//  Copyright © 2019 Ashli Rankin. All rights reserved.
//

import UIKit

class CreateTipView: UIView {
    lazy var collectionName: UITextField = {
        let textField = UITextField()
        textField.text = "Enter Collection name"
        return textField
    }()
    
    lazy var createTipName: UITextField = {
        let textField = UITextField()
        textField.text = "Enter venue name"
        return textField
    }()
    
    lazy var createTipTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Enter Tip here."
        return textView
    }()

    lazy var submitButton: UIButton = {
        let button = UIButton()
        button.setTitle("Submit", for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    private func commonInit() {
        setConstraints()
    }
    
    
    
}

extension CreateTipView {
    private func setConstraints() {
        addSubview(submitButton)
        addSubview(createTipName)
        addSubview(collectionName)
        addSubview(createTipTextView)
        
        collectionName.translatesAutoresizingMaskIntoConstraints = false
        
        collectionName.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        collectionName.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        collectionName.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        
        createTipName.translatesAutoresizingMaskIntoConstraints = false
        createTipName.topAnchor.constraint(equalTo: collectionName.bottomAnchor).isActive = true
        createTipName.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        createTipName.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        
        createTipTextView.translatesAutoresizingMaskIntoConstraints = false
        createTipTextView.topAnchor.constraint(equalTo: createTipName.bottomAnchor).isActive = true
        createTipTextView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        createTipTextView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        
        
        
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        
        submitButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        submitButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
}