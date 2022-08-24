//
//  OtpViewModel.swift
//  SwiftUi Practice
//
//  Created by Apple on 23/08/22.
//

import Foundation
import SwiftUI
class otpViewModel:ObservableObject{
    @Published var otpText:String = ""
    @Published var otpField:[String] = Array(repeating: "", count: 6)
}
