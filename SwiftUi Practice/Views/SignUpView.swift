//
//  SignUpView.swift
//  SwiftUi Practice
//
//  Created by Apple on 17/08/22.
//

import SwiftUI

struct SignUpView: View {
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
struct initial: View
{   @State var firstName:String = ""
    @State var lastname:String = ""
    @State var mobileno:String = ""
    @State var emailId:String = ""
    var body: some View
    {
        Image("flag_icon")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(.top,10)
        VStack{
            TextField(
        }
    }
}
