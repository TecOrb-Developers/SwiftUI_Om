//
//  ResetPasswordView.swift
//  SwiftUi Practice
//
//  Created by Apple on 23/08/22.
//

import SwiftUI

struct ResetPasswordView: View {
    var body: some View {
        ResetPassWord()
    }
}

struct ResetPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ResetPasswordView()
    }
}

struct ResetPassWord:View{
    @State var newPassword = ""
    @State var isNewPassword = false
    @State var IsReNewPass = false
    @State var reNewPassword = ""
    var body: some View
    {
        VStack(alignment: .leading){
            Text("Reset Password")
                .fontWeight(.bold)
                .padding()
                .frame(width: 350, height: 40,alignment:.leading)
                .font(.system(size: 30))
                
            Text("Enter Password")
                .fontWeight(.semibold)
                .padding()
                .font(.system(size: 20))
//MARK: - NewPasswordTextField
            HStack{
                if isNewPassword
                {
                    TextField("Old Password", text: $newPassword)
                        .frame(width: 300, height: 45)
                        .padding()
                }
                else{
                    SecureField("Old Password", text: $newPassword)
                        .frame(width: 300, height: 45)
                        .padding()
                }
               
                
                Spacer()
                Button(action: {
                    self.isNewPassword.toggle()
                })
                {
                    if isNewPassword
                    {
                        Image("pass_show-1")
                            .resizable()
                            .scaledToFit()
                    }
                    else
                    {
                        Image("pass_hide-1")
                            .resizable()
                            .scaledToFit()
                    }
            
                }
            }
            .padding(.top,-20)
            
//MARK: - Re-NewPasswordTextField
            
            HStack{
                if IsReNewPass
                {
                    TextField("New Password",text:$reNewPassword)
                        .frame(width: 300, height: 45)
                        .padding()
                }
                else{
                    SecureField("New Password",text:$reNewPassword)
                        .frame(width: 300, height: 45)
                        .padding()
                }
                Spacer()
                Button(action:{
                    self.IsReNewPass.toggle()
                })
                {
                    if IsReNewPass{
                        Image("pass_show-1")
                            .resizable()
                            .scaledToFit()
                    }
                    else{
                        Image("pass_hide-1")
                            .resizable()
                            .scaledToFit()
                    }
                }
                
            }
            .padding(.top,-30)
            
            NavigationLink(destination: SwiftUIView5())
            {
                     Text("SUBMIT")
                    .font(.title2)
                    .frame(width: 360, height: 45)
                    .background(.black)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .padding(.bottom, 300)

    }
}
