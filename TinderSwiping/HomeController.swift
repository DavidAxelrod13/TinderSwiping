//
//  ViewController.swift
//  TinderSwiping
//
//  Created by David on 09/01/2018.
//  Copyright © 2018 David. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    lazy var tinderCard: TinderCard = {
        let tc = TinderCard()
        tc.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(swipeCard(sender:))))
        return tc
    }()
    
    let buttonContainer: ButtonsView = {
        let bc = ButtonsView()
        return bc
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        setUpViews()
    }
    
    func setUpViews() {
        
        view.addSubview(tinderCard)
        view.addSubview(buttonContainer)
        
        NSLayoutConstraint.activate([
            tinderCard.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            tinderCard.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            tinderCard.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tinderCard.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7),
            
            buttonContainer.topAnchor.constraint(equalTo: tinderCard.bottomAnchor, constant: 50),
            buttonContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonContainer.widthAnchor.constraint(equalTo: tinderCard.widthAnchor)
            ])
    }
    
    @objc private func swipeCard(sender: UIPanGestureRecognizer) {
        sender.swipeView(tinderCard)
    }

}

