//
//  TextFieldDelegateProxy.swift
//  AnyFormatKit
//
//  Created by branderstudio on 8/11/19.
//  Copyright © 2019 BRANDERSTUDIO. All rights reserved.
//

import UIKit

protocol TextFieldDelegateProxyDelegate: class {
  func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool
  func textFieldDidBeginEditing(_ textField: UITextField)
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool
  func textFieldDidEndEditing(_ textField: UITextField)
  func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason)
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
  func textFieldShouldClear(_ textField: UITextField) -> Bool
  func textFieldShouldReturn(_ textField: UITextField) -> Bool
}

class TextFieldDelegateProxy: NSObject, UITextFieldDelegate {
  
  weak var delegate: TextFieldDelegateProxyDelegate?
  
  func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
    return delegate?.textFieldShouldBeginEditing(textField) ?? true
  }
  
  func textFieldDidBeginEditing(_ textField: UITextField) {
    delegate?.textFieldDidBeginEditing(textField)
  }
  
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    return delegate?.textFieldShouldEndEditing(textField) ?? true
  }
  
  func textFieldDidEndEditing(_ textField: UITextField) {
    delegate?.textFieldDidEndEditing(textField)
  }
  
  func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
    delegate?.textFieldDidEndEditing(textField, reason: reason)
  }
  
  
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    return delegate?.textField(textField, shouldChangeCharactersIn: range, replacementString: string) ?? true
  }
  
  func textFieldShouldClear(_ textField: UITextField) -> Bool {
    return delegate?.textFieldShouldClear(textField) ?? true
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    return delegate?.textFieldShouldReturn(textField) ?? true
  }
}
