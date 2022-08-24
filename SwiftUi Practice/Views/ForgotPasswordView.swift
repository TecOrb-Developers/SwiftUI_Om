//
//  ForgotPasswordView.swift
//  SwiftUi Practice
//
//  Created by Apple on 22/08/22.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State var phoneNumber = ""
    var body: some View {
      
        VStack(alignment: .leading){
            Text("Forgot Password")
                .fontWeight(.bold)
                .font(.system(size: 30))
                .padding(.leading)
            Text("Enter Phone Number")
                .font(.title)
                .padding(.leading)
                padding()
            Text("Otp will be sent to this number")
                .font(.title3)
                .padding(.leading)
                 padding()
            HStack{
                Button(action: {
                    
                })
                {
                    Text("+971")
                    
                }
                TextField("Enter Number",text: $phoneNumber)
                    .frame(width: 300, height: 45)
                    .font(.title3)
                
            }
            .padding()
        }
       
        .padding()
        .padding(.bottom,30)
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
