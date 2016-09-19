//
//  ViewController.swift
//  CompoundControllerViewDemo-iOS
//
//  Created by James Bean on 9/18/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import UIKit
import CompoundControllerView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let matrixMixerView = MatrixMixerView(
            frame: CGRect(x: 100, y: 100, width: 400, height: 400),
            amountInputs: 4,
            amountOutputs: 4
        )
        
        view.layer.addSublayer(matrixMixerView)
        matrixMixerView[1,1].ramp(to: 1.0, over: 20)
        matrixMixerView[0,2].ramp(to: 1.0, over: 30)
        matrixMixerView[2,0].ramp(to: 1.0, over: 12)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}