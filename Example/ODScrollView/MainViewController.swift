//
//  ViewController.swift
//  ODScrollView
//
//  Created by Orçun Deniz on 07.03.2020.
//  Copyright (c) 2020 orcundeniz@windowslive.com. All rights reserved.
//

import UIKit
import ODScrollView

class MainViewController: UIViewController {
    
    @IBOutlet weak var ODScrollView: ODScrollView!
    @IBOutlet weak var ODScrollContentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ODScrollView.registerContentView(ODScrollContentView)
        ODScrollView.odScrollViewDelegate = self
        ODScrollView.delegate = self
        
        // Additional setup for ODScrollView
        ODScrollView.keyboardDismissMode = .onDrag
    }
    
}

extension MainViewController: ODScrollViewDelegate {
    
    func keyboardDidShow(by scrollView: ODScrollView) {
    }
    
    func scrollAdjustmentWillBegin(by scrollView: ODScrollView) {
    }
    
    func scrollAdjustmentDidEnd(by scrollView: ODScrollView) {
        
    }
    
    func keyboardDidHide(by scrollView: ODScrollView) {
        
    }
    
    func adjustmentMargin(for textInput: UITextInput, inside scrollView: ODScrollView) -> CGFloat {
        20
    }
    
    func adjustmentEnabled(for textInput: UITextInput, inside scrollView: ODScrollView) -> Bool {
        true
    }
    
    func adjustmentDirection(for textInput: UITextInput, inside scrollView: ODScrollView) -> AdjustmentDirection {
        .bottom
    }
    
    func adjustmentOption(for scrollView: ODScrollView) -> AdjustmentOption {
        .always
    }
    
    func hideKeyboardByTappingToView(for scrollView: ODScrollView) -> UIView? {
        self.view
    }
    
    func isResettingAdjustmentEnabled(for scrollView: ODScrollView) -> Bool {
        true
    }
}

extension MainViewController: UIScrollViewDelegate {
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("scrollViewWillBeginDragging")
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("scrollViewDidEndDragging")
    }
    
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        print("scrollViewWillBeginDecelerating")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("scrollViewDidEndDecelerating")
    }
}
