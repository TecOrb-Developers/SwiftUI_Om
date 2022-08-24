//
//  BackButton.swift
//  SwiftUi Practice
//
//  Created by Apple on 23/08/22.
//

import Foundation
import SwiftUI


struct backButton:View
{
    @Environment(\.presentationMode) var presentationMode

    var body: some View
    {
        navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
           Button(action:
                    {
               self.presentationMode.wrappedValue.dismiss()
                   })
                    {
               HStack
                 {
                   Image(systemName: "sidemenu_arrow_icon-1")
                   Text("Go Back")
               }
             }
          )
    }
}
