//
//  LanguageSelectView.swift
//  SwiftUi Practice
//
//  Created by Apple on 21/08/22.
//

import SwiftUI

struct LanguageSelectView: View {
<<<<<<< HEAD
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        
        select()
        navigation(text: "SUBMIT", nextView: SwiftUIView5())
            .frame(width: 350, height: 40)
            .font(.title2)
            .background(.blue)
            .foregroundColor(Color.white)
            .cornerRadius(10)
        
            .navigationBarBackButtonHidden(true) // Hide default button
            .navigationBarItems(leading: NavBackButton(dismiss: self.dismiss))
=======
    var body: some View {
        
         select()
      
            navigation(text: "SUBMIT", nextView: SwiftUIView5())
                .frame(width: 350, height: 40)
                .font(.title2)
                .background(.blue)
                .foregroundColor(Color.white)
                .cornerRadius(10)
               
        
>>>>>>> d848bcb86c4d2c57807ce8776d47756dafd66d2c
    }
}

struct LanguageSelectView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageSelectView()
    }
<<<<<<< HEAD
=======
    
    
>>>>>>> d848bcb86c4d2c57807ce8776d47756dafd66d2c
}
struct select:View
{
    @State var selectEnglish:Bool = true
    @State var selectFrench:Bool = false
    
    var body:some View
    {
        VStack(alignment: .leading, spacing: 5){
            Text("Select Language")
                .font(.title2)
                .bold()
                .padding(.bottom,20)
                .padding()
            
            HStack(spacing: 20)
            {
                Image("english_flag")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding()
                Text("English")
                Spacer(minLength: 100)
                Button(action: {
                    self.selectEnglish = !self.selectEnglish
                    if self.selectEnglish == true
                    {
                        self.selectFrench = false
                    }
                    else{
                        self.selectFrench = true
                    }
<<<<<<< HEAD
                    
=======
                
>>>>>>> d848bcb86c4d2c57807ce8776d47756dafd66d2c
                })
                {
                    if selectEnglish
                    {
                        
                        Image("ps_checkbox_checked-1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40)
                            .cornerRadius(20)
<<<<<<< HEAD
                        
                    }
                    else{
                        Image("emd_point")
=======
                  
                    }
                    else{
                            Image("emd_point")
>>>>>>> d848bcb86c4d2c57807ce8776d47756dafd66d2c
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40)
                            .cornerRadius(20)
                    }
                }
            }
            HStack(spacing: 20)
            {
                Image("arabic_language-1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding()
                Text("Arabic")
                Spacer(minLength: 150)
                Button(action: {
                    self.selectFrench = !self.selectFrench
                    if self.selectFrench == false
                    {
                        self.selectEnglish = true
                    }
                    else{
                        self.selectEnglish = false
                    }
                })
                {
                    if selectFrench
                    {
                        
                        Image("ps_checkbox_checked-1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40)
                            .cornerRadius(20)
<<<<<<< HEAD
                        
                    }
                    else{
                        Image("emd_point")
=======
                  
                    }
                    else{
                            Image("emd_point")
>>>>>>> d848bcb86c4d2c57807ce8776d47756dafd66d2c
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40)
                            .cornerRadius(20)
                    }
                }
            }
<<<<<<< HEAD
            
=======
           
>>>>>>> d848bcb86c4d2c57807ce8776d47756dafd66d2c
            //.padding(10)
            .padding([.leading,.trailing],0)
            
        }
        .padding(.top,-190)
    }
}
