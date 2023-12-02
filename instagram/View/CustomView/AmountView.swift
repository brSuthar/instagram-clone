//
//  AmountView.swift
//  instagram
//
//  Created by Bhoma ram on 02/12/23.
//

import UIKit

class AmountView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit () {
        backgroundColor = Colors.raisinBlack;
        layer.cornerRadius = 12.0;
    }
}
