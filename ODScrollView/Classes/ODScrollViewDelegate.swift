//
//  ODScrollViewDelegate.swift
//  ODScrollViewApp
//
//  Created by Orçun Deniz on 07.03.2020.
//  Copyright © 2020 Orçun Deniz. All rights reserved.
//

import UIKit

public protocol ODScrollViewDelegate: AnyObject {
    
    // MARK:- State Notifiers

    ///
    /// Notifies when the keyboard showed.
    ///
    /// - Parameter scrollView: TODO
    func keyboardDidShow(by scrollView: ODScrollView)


    ///
    /// Notifies before the UIScrollView adjustment.
    ///
    /// - Parameter scrollView: TODO
    func scrollAdjustmentWillBegin(by scrollView: ODScrollView)
    

    ///
    /// Notifies after the UIScrollView adjustment.
    ///
    /// - Parameter scrollView: TODO
    func scrollAdjustmentDidEnd(by scrollView: ODScrollView)


    ///
    /// Notifies when the keyboard hid.
    ///
    /// - Parameter scrollView: TODO
    func keyboardDidHide(by scrollView: ODScrollView)
    
    
    // MARK:- Adjustment Settings

    ///
    /// Adjusts the distance between keyboard and firstResponder view.
    ///
    /// ```
    ///     if let textField = textInput as? UITextField, textField == self.UITextField_inside_contentView {
    ///         return 20
    ///     } else {
    ///         return 40
    ///     }
    /// ```
    /// - Parameters:
    ///   - textInput: TODO
    ///   - scrollView: TODO
    func adjustmentMargin(for textInput: UITextInput, inside scrollView: ODScrollView) -> CGFloat


    ///
    /// Specifies adjustment direction for each UITextInput. It means that  some of UITextInputs inside ODScrollView can be adjusted to the bottom, while others can be adjusted to center or top.
    ///
    /// ```
    ///     if let textView = textInput as? UITextView, textView == self.YOURTEXTVIEW {
    ///         return .Bottom
    ///     } else {
    ///         return .Center
    ///     }
    /// ```
    ///
    /// - Parameters:
    ///   - textInput: TODO
    ///   - scrollView: TODO
    func adjustmentDirection(for textInput: UITextInput, inside scrollView: ODScrollView) -> AdjustmentDirection


    ///
    /// Adjustment can be enabled/disabled for each UITextInput seperately. True by default.
    ///
    /// - Parameters:
    ///   - textInput: TODO
    ///   - scrollView: TODO
    func adjustmentEnabled(for textInput: UITextInput, inside scrollView: ODScrollView) -> Bool

    
    ///
    /// There 2 types of adjustment option: Always and IfNeeded
    ///
    /// - always : ODScrollView always adjusts the UITextInput which is placed anywhere in the ODScrollView.
    /// - ifNeeded : ODScrollView only adjusts the UITextInput if it overlaps with the shown keyboard.
    ///
    /// - Parameter scrollView: TODO
    func adjustmentOption(for scrollView: ODScrollView) -> AdjustmentOption


    // MARK: - Hiding Keyboard Settings

    ///
    /// Provides a view for tap gesture that hides keyboard.
    ///
    /// By default, keyboard can be dismissed by keyboardDismissMode of UIScrollView.
    ///
    ///```
    ///    keyboardDismissMode = .none
    ///    keyboardDismissMode = .onDrag
    ///    keyboardDismissMode = .interactive
    ///```
    /// Beside above settings:
    ///
    /// - Returning UIView from this, lets you to hide the keyboard by tapping the UIView you provide, and also be able to use isResettingAdjustmentEnabled(for scrollView: ODScrollView) setting.
    ///
    /// - If you return nil instead of UIView object, It means that hiding the keyboard by tapping is disabled.
    ///
    /// - Parameter scrollView: TODO
    func hideKeyboardByTappingToView(for scrollView: ODScrollView) -> UIView?


    /// Resets the scroll view offset - which is adjusted before - to beginning its position after keyboard hid by tapping to the provided UIView via hideKeyboardByTappingToView.
    ///
    /// ## IMPORTANT:
    /// This feature requires a UIView that is provided by hideKeyboardByTappingToView().
    ///
    /// - Parameter scrollView: TODO
    func isResettingAdjustmentEnabled(for scrollView: ODScrollView) -> Bool
    
}
