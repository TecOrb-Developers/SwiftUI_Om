//
//  SignUpView.swift
//  SwiftUi Practice
//
//  Created by Apple on 17/08/22.
//

import SwiftUI

struct SignUpView: View {
    
    var body: some View {
        initial()
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
        Image("logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(.top,10)
            .frame(width: 100, height: 100)
        Divider()
        VStack(alignment: .center, spacing: 10){
            TextField("Enter the first name ", text: $firstName)
                .padding(10)
                .frame(width: 300, height: 40, alignment: .topLeading)
          
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(.blue,lineWidth: 2))
            
            TextField("Enter the last name ", text: $lastname)
                .padding(10)
                .frame(width: 300, height: 40, alignment: .topLeading)
              
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(.blue,lineWidth: 2))
               
            TextField("Enter the Mobile number ",text: $mobileno)
                .padding(10)
                .frame(width: 300, height: 40, alignment: .topLeading)
             
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(.blue,lineWidth:  2))
               
            TextField("Enter the Emailid",text: $emailId)
                .padding(10)
                .frame(width: 300, height: 40, alignment: .topLeading)
              
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(.blue,lineWidth: 2))
               
        }
       Divider()
        Button("Submit")
        {
//            self.presentationMode.wrappedValue.dismiss()
        }
        
    }
}
