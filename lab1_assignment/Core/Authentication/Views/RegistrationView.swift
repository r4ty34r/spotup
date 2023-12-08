//
//  RegistrationView.swift
//  lab1_assignment
//
//  Created by Tarikk Brown on 12/6/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Color(red: 206 / 255, green: 255 / 255, blue: 96 / 255)
                .ignoresSafeArea()
        
            VStack{
                //image
                Image("spotup_logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width:100, height: 120)
                    .padding(.vertical, 32)
                
                VStack(spacing: 24){
                    InputView(text: $email,
                              title: "Email Address",
                              placeholder: "name@example.com")
                    .autocapitalization(.none)
                    
                    InputView(text: $fullname,
                              title: "Full Name",
                              placeholder: "name@example.com")
                    
                    InputView(text: $password,
                              title: "Password",
                              placeholder: "Enter Your Password",
                              isSecureField: true)
                    
                    InputView(text: $confirmPassword,
                              title: "Confirm Password",
                              placeholder: "Confirm Your Password",
                              isSecureField: true)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                Button{
                    print("Log user up..")
                } label: {
                    HStack {
                        Text("SIGN UP")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(Color(.black))
                .cornerRadius(10)
                .padding(.top, 24)
                
                Spacer()
                
                Button{
                    dismiss()
                } label: {
                    HStack(spacing: 3){
                        
                        Text(" Already have an account ?")
                            .foregroundColor(.black)
                        Text("Sign in")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                    }
                    .font(.system(size: 14))
                }
            }
        }
    }
}

#Preview {
    RegistrationView()
}
