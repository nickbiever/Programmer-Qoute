//
//  QouteView.swift
//  Programmer Qoute
//
//  Created by Nick Biever on 13/03/2020.
//  Copyright © 2020 Nick Biever. All rights reserved.
//

import UIKit

class QouteView: UIView {
    
    private let textBackground = UILabel()
    public let qouteLabel = UILabel()
    public let authorLabel = UILabel()
    public let newQouteButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setBackground()
        setQouteLabel()
        setAuthorLabel()
        setNewQouteButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func setBackground() {
        self.addSubview(textBackground)
        
        var binaryString = [String]()
        
        for _ in 0 ..< 1000 {
            binaryString.append(String(Int.random(in: 0..<2)))
        }
        
        textBackground.text = binaryString.joined(separator: "")
        textBackground.numberOfLines = 0
        textBackground.textColor = UIColor(red: 0.251, green: 0.251, blue: 0.251, alpha: 1.00)
        textBackground.font = UIFont(name: "dataControl", size: 30)
        
        // Added extra space to get the background outside the border
        textBackground.translatesAutoresizingMaskIntoConstraints = false
        textBackground.leftAnchor.constraint(equalTo: self.leftAnchor, constant: -20).isActive = true
        textBackground.topAnchor.constraint(equalTo: self.topAnchor, constant: -20).isActive = true
        textBackground.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 20).isActive = true
        textBackground.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 20).isActive = true
    }
    
    private func setQouteLabel() {
        self.addSubview(qouteLabel)
        
        qouteLabel.numberOfLines = 0
        qouteLabel.textColor = UIColor(red: 0.001, green: 1.000, blue: 0.000, alpha: 1.00)
        qouteLabel.font = UIFont(name: "dataControl", size: 36)
        qouteLabel.textAlignment = .center
        
        qouteLabel.translatesAutoresizingMaskIntoConstraints = false
        qouteLabel.leftAnchor.constraint(equalTo: self.layoutMarginsGuide.leftAnchor).isActive = true
        qouteLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -50).isActive = true
        qouteLabel.rightAnchor.constraint(equalTo: self.layoutMarginsGuide.rightAnchor).isActive = true
    }
    
    private func setAuthorLabel() {
        self.addSubview(authorLabel)
        
        authorLabel.textColor = UIColor(red: 0.001, green: 1.000, blue: 0.000, alpha: 1.00)
        authorLabel.font = UIFont(name: "dataControl", size: 36)
        authorLabel.textAlignment = .center
        
        authorLabel.translatesAutoresizingMaskIntoConstraints = false
        authorLabel.leftAnchor.constraint(equalTo: self.layoutMarginsGuide.leftAnchor).isActive = true
        authorLabel.topAnchor.constraint(equalTo: qouteLabel.bottomAnchor, constant: 50).isActive = true
        authorLabel.rightAnchor.constraint(equalTo: self.layoutMarginsGuide.rightAnchor).isActive = true
        authorLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    private func setNewQouteButton() {
        self.addSubview(newQouteButton)
        
        newQouteButton.setTitle("New Qoute", for: .normal)
        newQouteButton.backgroundColor = UIColor(red: 0.001, green: 1.000, blue: 0.000, alpha: 1.00)
        newQouteButton.layer.cornerRadius = 10
        newQouteButton.titleLabel?.font = UIFont(name: "dataControl", size: 36)
        newQouteButton.setTitleColor(UIColor(red: 0.251, green: 0.251, blue: 0.251, alpha: 1.00), for: .normal)
        
        newQouteButton.translatesAutoresizingMaskIntoConstraints = false
        newQouteButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        newQouteButton.bottomAnchor.constraint(equalTo: self.layoutMarginsGuide.bottomAnchor).isActive = true
        newQouteButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
}
