//
//  KZViewController.swift
//  AllCode
//
//  Created by Karl Zeo on 05/06/2017.
//  Copyright © 2017 Karl Zeo. All rights reserved.
//

import Cocoa

class KZViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    lazy var myView: KZView = {
        let frame: CGRect = CGRect(x: 0, y: 0, width: 400, height: 300)
        let view: KZView = KZView(frame: frame)
        return view
    }()
    
    override init(nibName nibNameOrNil: NSNib.Name?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.view = self.myView
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
