//
//  ForgotPasswordView.swift
//  SwiftUi Practice
//
//  Created by Apple on 22/08/22.
//

import SwiftUI

struct ForgotPasswordView: View {
<<<<<<< HEAD
    @Environment(\.dismiss) private var dismiss
    @State var phoneNumber = ""
    @State private var selectedCountry: String = ""
    var body: some View {
      //  Text("nkjcndflksv")
        VStack(alignment: .leading){
            Text("Forgot Password")
                .fontWeight(.bold)
                .padding()
                .frame(width: 350, height: 40,alignment:.leading)
                .font(.system(size: 30))
                
            Text("Enter Phone Number")
                .fontWeight(.semibold)
                .padding()
                .font(.system(size: 20))
            Text("Otp will be sent to this number")
                .fontWeight(.none)
                .padding()
                .padding(.top,-20)
//MARK: = textField CountryCode Mobile Number
            HStack(){
                  Button(action:
                        {
                    if selectedCountry != "" {
                        Text(Locale.current.localizedString(forRegionCode: selectedCountry) ?? selectedCountry)
                            .font(.system(size: 17))
                        //.foregroundColor(Color.gray)
                           
                    } else {
                        Text("+91")
                            .font(.system(size: 15))
                    }
                })
                {
                    Picker("Country", selection: $selectedCountry) {
                        ForEach(getLocales(), id: \.id) { country in
                            Text(country.id).tag(country.id)
                           
                        }
                    }
                    
                }
                
                TextField("Enter Mobile No", text: $phoneNumber)
                    .frame(width: 300, height: 45)
            }
            .padding()
            NavigationLink(destination: OtpView())
            {
                Text("SUBMIT")
                    .frame(width: 250, height: 45)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black,lineWidth: 2))
                        .padding(.leading,50)
                        .font(.title2)
                        .foregroundColor(Color.black)
                        .background(.white)
            }
        }
        .padding()
        .padding(.bottom,300)
        .navigationBarBackButtonHidden(true) // Hide default button
        .navigationBarItems(leading: NavBackButton(dismiss: self.dismiss))
=======
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
>>>>>>> d848bcb86c4d2c57807ce8776d47756dafd66d2c
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
<<<<<<< HEAD

//MARK: -For Country Picker
fileprivate struct Country {
    var id: String
    var name: String
    var phoneCode:String
}

fileprivate func getLocales() -> [Country] {
    let locales = Locale.isoRegionCodes
        .filter { $0 != "United States"}
        .compactMap {
            Country(id: $0,name: Locale.current.localizedString(forRegionCode: $0) ?? $0, phoneCode: $0)}
    return [Country(id: "US",name: Locale.current.localizedString(forRegionCode: "US") ?? "United States", phoneCode: "+91")] + locales
}

=======
>>>>>>> d848bcb86c4d2c57807ce8776d47756dafd66d2c
