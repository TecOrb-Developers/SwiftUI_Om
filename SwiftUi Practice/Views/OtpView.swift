//
//  OtpView.swift
//  SwiftUi Practice
//
//  Created by Apple on 22/08/22.
//

import SwiftUI

struct OtpView: View {
<<<<<<< HEAD
    @Environment(\.dismiss) private var dismiss
    @State var otp1 = ""
    @State var otp2 = ""
    @State var otp3 = ""
    @State var otp4 = ""
    @State var otp5 = ""
    @State var otp6 = ""
    @State var Number = "999999999"
    @StateObject var otpModel: otpViewModel = .init()
    //  @FocusState var activeField:OTPField?
    var body: some View {
        // otpField()
        VStack(alignment: .leading){
            Text("Enter the OTP")
                .fontWeight(.bold)
                .padding()
                .frame(width: 350, height: 40,alignment:.leading)
                .font(.system(size: 30))
            
            Text("We have sent Otp To \(Number)")
                .fontWeight(.semibold)
                .padding()
                .font(.system(size: 20))
            
            HStack(spacing: 20){
                TextField("1",text: $otp1)
                    .frame(width: 15, height: 15)
                    .padding(15)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.black,lineWidth: 1))
                
                TextField("2",text: $otp2)
                    .frame(width: 15, height: 15)
                    .padding(15)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.black,lineWidth: 1))
                
                TextField("3",text: $otp3)
                    .frame(width: 15, height: 15)
                    .padding(15)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.black,lineWidth: 1))
                
                TextField("4",text: $otp4)
                    .frame(width: 15, height: 15)
                    .padding(15)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.black,lineWidth: 1))
                
                TextField("5",text: $otp5)
                    .frame(width: 15, height: 15)
                    .padding(15)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.black,lineWidth: 1))
                
                TextField("6",text: $otp6)
                    .frame(width: 15, height: 15)
                    .padding(15)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.black,lineWidth: 1))
            }
            NavigationLink(destination: ResetPasswordView())
            {
                Text("SUBMIT")
            }
                .frame(width: 250, height: 45)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black,lineWidth: 2))
                    .padding(.leading,50)
                    .font(.title2)
                    .foregroundColor(Color.black)
                    .background(.white)
                    .padding()
        }
        .padding()
        .padding(.bottom,300)
        
        .navigationBarBackButtonHidden(true) // Hide default button
        .navigationBarItems(leading: NavBackButton(dismiss: self.dismiss))
    }
      
    /*
     @ViewBuilder
     func otpField() -> some View
     {
     HStack( spacing: 10){
     ForEach(0..<6, id: \.self)
     {index in
     
     VStack(spacing: 8)
     {
     TextField("",text: $otpModel.otpField[index])
     //  .keyboardType(Number)
     .textContentType(.oneTimeCode)
     .multilineTextAlignment(.center)
     .focused($activeField,equals: activeStateForIndex(index:index))
     //  Rectangle()
     //                        .fill(activeField == activeStateForIndex(index: index))
     //                        .frame(height:4)
     
     }
     .frame( width: 50)
     }
     }
     }
     
     
     func activeStateForIndex(index: Int) -> OTPField
     {
     switch index
     {
     case 0:return.field1
     case 1:return.field2
     case 2:return.field3
     case 3:return.field4
     case 4:return.field5
     default:return.field6
     
     }
     
     }
     }
     */
}
=======
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

>>>>>>> d848bcb86c4d2c57807ce8776d47756dafd66d2c
struct OtpView_Previews: PreviewProvider {
    static var previews: some View {
        OtpView()
    }
}
<<<<<<< HEAD
//
//enum OTPField
//{
//    case field1
//    case field2
//    case field3
//    case field4
//    case field5
//    case field6
//
//}
=======
>>>>>>> d848bcb86c4d2c57807ce8776d47756dafd66d2c
