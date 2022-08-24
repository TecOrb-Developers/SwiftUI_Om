//
//  Navigate.swift
//  SwiftUi Practice
//
//  Created by Apple on 21/08/22.
//


import Foundation
import SwiftUI
struct navigation<tagetview:View>:View
{
    @State var text = ""
    var nextView: tagetview
    var body:some View
    {
        NavigationLink(destination: nextView)
        {
       Text("\(text)")
                .font(.title2)
                .padding(70)
               // .padding([.leading, .trailing], 30)
               // .padding([.top], 10)
                .frame(height: 50)
        }
    }

}

