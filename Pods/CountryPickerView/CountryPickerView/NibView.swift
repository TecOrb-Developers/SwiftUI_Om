//
//  NibView.swift
//  CountryPickerView
//
//  Created by Kizito Nwose on 22/09/2017.
//  Copyright © 2017 Kizito Nwose. All rights reserved.
//

import UIKit

public class NibView: UIView {
    
    weak var view: UIView!
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        nibSetup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        nibSetup()
    }
    
    fileprivate func nibSetup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        addSubview(view)
    }
    
    fileprivate func loadViewFromNib() -> UIView {
        let selfName = String(describing: type(of: self))
        let nib = UINib(nibName: selfName, bundle: Bundle._module)
        let nibView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        return nibView
    }
    
}
