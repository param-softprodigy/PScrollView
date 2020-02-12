//
//  DScrollView.swift
//  DuckUI
//
//  Created by Alex Nagy on 06/06/2019.
//

import UIKit

public class PScrollView: UIScrollView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        keyboardDismissMode = .interactive
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
