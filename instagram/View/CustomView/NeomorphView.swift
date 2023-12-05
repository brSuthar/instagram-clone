//
//  NeomorphView.swift
//  instagram
//
//  Created by Bhoma ram on 04/12/23.
//

import UIKit

class NeomorphView: UIView {
    private let darkShadow = CALayer()
    private let lightShadow = CALayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() -> Void {
        setupContentView();
        setshadow();
    }
    
    func setshadow() {
        darkShadow.frame = self.bounds
        darkShadow.cornerRadius = 16
        darkShadow.backgroundColor = Colors.raisinBlack.cgColor
        darkShadow.shadowColor = UIColor.black.withAlphaComponent(0.5).cgColor
        darkShadow.shadowOffset = CGSize(width: 9, height: 4)
        darkShadow.shadowOpacity = 0.15
        darkShadow.shadowRadius = 16
        self.layer.insertSublayer(darkShadow, at: 0)
        lightShadow.frame = self.bounds
        lightShadow.cornerRadius = 16
        lightShadow.backgroundColor = Colors.raisinBlack.cgColor
        lightShadow.shadowColor = Colors.tundora.withAlphaComponent(0.3).cgColor;
        lightShadow.shadowOffset = CGSize(width: -9, height: -4)
        lightShadow.shadowOpacity = 0.3
        lightShadow.shadowRadius = 12
        self.layer.insertSublayer(lightShadow, at: 0)
    }
    
    func setupContentView() {
        backgroundColor = Colors.raisinBlack;
        self.layer.cornerRadius = 16
    }
}
