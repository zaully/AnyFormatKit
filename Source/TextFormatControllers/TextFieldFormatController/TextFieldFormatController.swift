//
//  TextFieldFormatController.swift
//  AnyFormatKit
//
//  Created by branderstudio on 8/11/19.
//  Copyright © 2019 BRANDERSTUDIO. All rights reserved.
//

import UIKit

class TextFieldFormatController {
  
  var formatter: TextInputFormatter?
  
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    guard let formatter = formatter else { return true }
    let result = formatter.formatInput(currentText: textField.text ?? "", range: range, replacementString: string)
    textField.text = result.formattedText
    textField.setCursorLocation(result.caretBeginOffset)
    
    return false
  }
}



private extension UITextField {
  
  func setCursorLocation(_ location: Int) {
    if let cursorLocation = position(from: beginningOfDocument, offset: location) {
      DispatchQueue.main.async { [weak self] in
        guard let strongSelf = self else { return }
        strongSelf.selectedTextRange = strongSelf.textRange(from: cursorLocation, to: cursorLocation)
      }
    }
  }
}
