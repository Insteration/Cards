//
//  DetailViewController.swift
//  Cards
//
//  Created by Artem Karmaz on 4/22/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//

import UIKit

class CardsDetailViewController: UIViewController {
    
    var color: UIColor? {
        didSet {
            containerView.backgroundColor = color
        }
    }
    
    var textTitle: String? {
        didSet {
            title = textTitle
        }
    }
    
    let containerView = UIView()
    
    var leftAnchorConstraint: NSLayoutConstraint!
    var rightAnchorConstraint: NSLayoutConstraint!
    var topAnchorConstraint: NSLayoutConstraint!
    var bottomAnchorConstraint: NSLayoutConstraint!
    
    override func loadView() {
        view = UIView()
        view.addSubview(containerView)
        configureContainerView()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.29, green:0.63, blue:0.49, alpha:1.0)
    }
    
    //MARK: - Configurations
    func configureContainerView() {
        containerView.translatesAutoresizingMaskIntoConstraints = false
        topAnchorConstraint = containerView.topAnchor.constraint(equalTo: view.topAnchor)
        bottomAnchorConstraint = containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        rightAnchorConstraint = containerView.rightAnchor.constraint(equalTo: view.rightAnchor)
        leftAnchorConstraint = containerView.leftAnchor.constraint(equalTo: view.leftAnchor)
        NSLayoutConstraint.activate([topAnchorConstraint,bottomAnchorConstraint,rightAnchorConstraint,leftAnchorConstraint])
    }
    
    func configurePositionOfContainer(left: CGFloat, right: CGFloat, top: CGFloat, bottom: CGFloat) {
        topAnchorConstraint.constant = top
        bottomAnchorConstraint.constant = bottom
        leftAnchorConstraint.constant = left
        rightAnchorConstraint.constant = right
        view.layoutIfNeeded()
    }
    
}
