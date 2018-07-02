//
//  ViewController.swift
//  Contacts
//
//  Created by Carlo Carpio on 02/07/2018.
//  Copyright © 2018 Carlo Carpio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let yasuoImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "yasuo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }() // this is a closure
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "This is a sample text for learning auto layout."
        textView.font = UIFont.boldSystemFont(ofSize: 14)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }() // this is a closure
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view.addSubview(yasuoImageView)
        view.addSubview(descriptionTextView)
        setUpLayout()
    }
    
    private func setUpLayout() {
        
        let topImageViewContainer = UIView()
        view.addSubview(topImageViewContainer)
        topImageViewContainer.translatesAutoresizingMaskIntoConstraints = false
        topImageViewContainer.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        topImageViewContainer.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        topImageViewContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageViewContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageViewContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        topImageViewContainer.addSubview(yasuoImageView)
        yasuoImageView.centerXAnchor.constraint(equalTo: topImageViewContainer.centerXAnchor).isActive = true
        yasuoImageView.centerYAnchor.constraint(equalTo: topImageViewContainer.centerYAnchor).isActive = true
        yasuoImageView.heightAnchor.constraint(equalTo: topImageViewContainer.heightAnchor, multiplier: 0.5).isActive =  true
//        yasuoImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
//        yasuoImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
//        yasuoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        yasuoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
//        yasuoImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
//        yasuoImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: topImageViewContainer.bottomAnchor, constant: 10).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
}
