//
//  ActionLabel.swift
//  instagram
//
//  Created by Bhoma ram on 05/12/23.
//

import UIKit

class ActionLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame);
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder);
        commonInit()
    }
    
    func commonInit() -> Void {
        font = UIFont.systemFont(ofSize: 12.0, weight: .medium)
        textColor = Colors.silver;
    }
}
