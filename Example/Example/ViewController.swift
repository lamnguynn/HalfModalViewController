//
//  ViewController.swift
//  Example
//
//  Created by Lam Nguyen on 8/15/21.
//

import UIKit
import HalfModalViewController

class ViewController: UIViewController {
    
    let button = UIButton()
    
    let xmarkButton: UIButton = {
        let xmarkButton = UIButton()
        xmarkButton.setImage(UIImage(systemName: "xmark"), for: .normal)
        xmarkButton.tintColor = .gray
        
        return xmarkButton
    }()
    
    let halfViewController = HalfPageModalViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set up the button
        button.setTitle("Settings", for: .normal)
        button.backgroundColor = .systemIndigo
        button.layer.cornerRadius = 15
        
        self.view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 130).isActive = true
        button.heightAnchor.constraint(equalToConstant: 45).isActive = true
        button.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button.addTarget(self, action: #selector(settingsClicked), for: .touchUpInside)
        
        //Set up the half modal
        halfViewController.defaultHeight = 300
        halfViewController.containerView.addSubview(xmarkButton)
        xmarkButton.translatesAutoresizingMaskIntoConstraints = false
        xmarkButton.trailingAnchor.constraint(equalTo: self.halfViewController.containerView.trailingAnchor, constant: -18).isActive = true
        xmarkButton.topAnchor.constraint(equalTo: self.halfViewController.containerView.topAnchor, constant: 18).isActive = true
        xmarkButton.addTarget(self, action: #selector(xmarkClicked), for: .touchUpInside)                                   //Add a target to dismiss the half VC when xmark is clicked
    }
    
    /*
        @settingsClicked
        Open the half view controller
     */
    @objc func settingsClicked(){
        halfViewController.modalPresentationStyle = .overCurrentContext
        self.present(halfViewController, animated: false, completion: nil)
    }
    
    /*
        @xmarkClicked
        Dismiss the half view controller when clicked.
     */
    @objc func xmarkClicked(){
        halfViewController.animateDismissView()
    }
}

