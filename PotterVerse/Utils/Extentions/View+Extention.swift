//
//  View+Extention.swift
//  Fashly
//
//  Created by Yousuf Abdelfattah on 29/07/2025.
//

import SwiftUI

extension View {
 public func dismissKeyboardOnTap() -> some View{
        return self.onTapGesture {
            dismissKeyboard()
        }
    }
  public func dismissKeyboard() {
      UIApplication.shared.sendAction(
        #selector(
            UIResponder.resignFirstResponder
        ),
        to: nil,
        from: nil,
        for: nil
      )
    }
}
