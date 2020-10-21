//
//  ViewController.swift
//  HighlightCards
//
//  Created by Huseyin Can Dayan on 21.10.2020.
//

import Cards
import UIKit

class ViewController: UIViewController {

    private let card: CardHighlight = {
        let card = CardHighlight(frame: .zero)
//        Configure
        card.backgroundImage = UIImage(named: "background")
        card.icon = UIImage(named: "icon")
        card.title = "Beat \nMy \nHigh Score"
        card.itemTitle = "Flappy Bird"
        card.itemSubtitle = "Play the original game"
        card.shadowBlur = 20
        card.buttonText = "GET"
        card.titleSize = 32
        card.textColor = .white
        card.itemTitleSize = 18
        
        
        return card
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        card.shouldPresent(
            CardContentController(),
            from: self,
            fullscreen: true)
        
        view.addSubview(card)
        card.delegate = self
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        card.frame = CGRect(
            x: 0,
            y: view.safeAreaInsets.top,
            width: view.frame.size.width,
            height: view.frame.size.width
        )
    }
}

extension ViewController: CardDelegate {
    
    
}

class CardContentController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .link
        
        let label = UILabel(frame: CGRect(
                                x: 20,
                                y: view.safeAreaInsets.top,
                                width: view.frame.size.width - 40,
                                height: 100))
        
        view.addSubview(label)
        label.textAlignment = .center
        label.text = "Hello World!"
        label.font = .systemFont(ofSize: 21, weight: .semibold)
        
    }
    
}



